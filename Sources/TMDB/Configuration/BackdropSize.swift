public struct BackdropSize: Codable, Hashable, ImageSize, Sendable {
  public typealias ImagePath = BackdropPath

  public var rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }
}

extension BackdropSize: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) {
    self.rawValue = value
  }
}
