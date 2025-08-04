import Foundation

#if canImport(FoundationNetworking)
  import FoundationNetworking
#endif

private let defaultPerformRequest: TMDBClient.PerformRequest = { request in
  try await Response(URLSession.shared.data(for: request))
}

public final class TMDBClient: Sendable {
  public let accessToken: String
  public let performRequest: PerformRequest

  let decoder = JSONDecoder()

  public init(
    accessToken: String,
    performRequest: PerformRequest? = nil
  ) {
    self.accessToken = accessToken
    self.performRequest = performRequest ?? defaultPerformRequest
  }

  func urlRequest(
    relativePath: String,
    queryItems: [String: String] = [:]
  ) throws -> URLRequest {
    let baseURLString = "https://api.themoviedb.org/3/"
    var components = URLComponents(string: baseURLString)!
    components.path.append(relativePath)
    if !queryItems.isEmpty {
      components.queryItems = queryItems.map {
        URLQueryItem(name: $0.key, value: $0.value)
      }
    }
    guard let url = components.url else {
      throw TMDBClientError.invalidURL(components)
    }
    var urlRequest = URLRequest(url: url)
    urlRequest.allHTTPHeaderFields = [
      "Accept": "application/json",
      "Authorization": "Bearer \(accessToken)",
    ]
    return urlRequest
  }

  public typealias PerformRequest = @Sendable (URLRequest) async throws -> Response
}
