import Foundation

#if canImport(FoundationNetworking)
  import FoundationNetworking
#endif

public final class TMDBClient: Sendable {
  public let baseURLString: String
  public let accessToken: String

  let decoder = JSONDecoder()

  public init(
    baseURLString: String = "https://api.themoviedb.org/3/",
    accessToken: String
  ) {
    self.baseURLString = baseURLString
    self.accessToken = accessToken
  }

  func urlRequest(
    relativePath: String,
    queryItems: [URLQueryItem]? = nil
  ) throws -> URLRequest {
    guard var components = URLComponents(string: baseURLString) else {
      throw TMDBClientError.invalidBaseURLString(baseURLString)
    }
    components.path.append(relativePath)
    components.queryItems = queryItems
    guard let url = components.url else {
      throw TMDBClientError.invalidURLComponents(components)
    }
    var urlRequest = URLRequest(url: url)
    urlRequest.allHTTPHeaderFields = [
      "Accept": "application/json",
      "Authorization": "Bearer \(accessToken)",
    ]
    return urlRequest
  }
}
