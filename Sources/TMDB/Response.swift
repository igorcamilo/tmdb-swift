import Foundation

#if canImport(FoundationNetworking)
  import FoundationNetworking
#endif

public struct Response: Codable, Hashable, Sendable {
  public var data: Data
  public var statusCode: Int?

  public init(
    data: Data,
    statusCode: Int? = nil
  ) {
    self.data = data
    self.statusCode = statusCode
  }

  public init(
    _ response: (Data, URLResponse)
  ) {
    self.data = response.0
    self.statusCode = (response.1 as? HTTPURLResponse)?.statusCode
  }
}
