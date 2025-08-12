import Dependencies
import DependenciesMacros
import Foundation

#if canImport(FoundationNetworking)
  import FoundationNetworking
#endif

private let decoder = JSONDecoder()

@DependencyClient struct SharedClient {
  var fetch: @Sendable (URLRequest) async throws -> (Data, URLResponse)

  func fetch<T>(
    relativePath: String,
    queryItems: [URLQueryItem]?,
    locale: Locale?,
    accessToken: String
  ) async throws -> T where T: Decodable {
    let baseURLString = "https://api.themoviedb.org/3/"
    guard var components = URLComponents(string: baseURLString) else {
      throw TMDBClientError.invalidBaseURLString(baseURLString)
    }
    components.path.append(relativePath)
    components.queryItems = queryItems
    if let locale = locale {
      components.queryItems?.append(
        URLQueryItem(name: "language", value: locale.identifier)
      )
    }
    guard let url = components.url else {
      throw TMDBClientError.invalidURLComponents(components)
    }
    var urlRequest = URLRequest(url: url)
    urlRequest.allHTTPHeaderFields = [
      "Accept": "application/json",
      "Authorization": "Bearer \(accessToken)",
    ]
    let (data, response) = try await fetch(urlRequest)
    if (response as? HTTPURLResponse)?.statusCode == 200 {
      return try decoder.decode(T.self, from: data)
    } else {
      throw try decoder.decode(TMDBError.self, from: data)
    }
  }
}

extension SharedClient: DependencyKey {
  static let liveValue = SharedClient(
    fetch: { try await URLSession.shared.data(for: $0) }
  )
}

extension DependencyValues {
  var sharedClient: SharedClient {
    get { self[SharedClient.self] }
    set { self[SharedClient.self] = newValue }
  }
}
