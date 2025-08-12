import Dependencies
import Foundation

#if canImport(FoundationNetworking)
  import FoundationNetworking
#endif

extension TMDBClient {
  public func configuration() async throws -> Configuration {
    let urlRequest = try urlRequest(relativePath: "configuration")
    @Dependency(\.urlSession) var urlSession
    let (data, response) = try await urlSession.data(for: urlRequest)
    if (response as? HTTPURLResponse)?.statusCode == 200 {
      return try decoder.decode(Configuration.self, from: data)
    } else {
      throw try decoder.decode(TMDBError.self, from: data)
    }
  }
}
