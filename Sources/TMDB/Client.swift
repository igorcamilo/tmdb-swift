import Foundation
#if canImport(FoundationNetworking)
  import FoundationNetworking
#endif

private let defaultPerformRequest: Client.PerformRequest = { request in
  try await Response(URLSession.shared.data(for: request))
}

public final class Client: Sendable {
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

  func urlRequest() throws -> URLRequest {
    let baseURLString = "https://api.themoviedb.org/3/"
    guard let baseURL = URL(string: baseURLString) else {
      throw ClientError.invalidBaseURL(baseURLString)
    }
    var urlRequest = URLRequest(url: baseURL)
    urlRequest.allHTTPHeaderFields = [
      "Accept": "application/json",
      "Authorization": "Bearer \(accessToken)",
    ]
    return urlRequest
  }

  public typealias PerformRequest = @Sendable (URLRequest) async throws -> Response
}

public enum ClientError: Error {
  case invalidBaseURL(String)
}
