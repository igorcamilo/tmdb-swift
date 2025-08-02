public struct PosterSize: Codable, Hashable, ImageSize, Sendable {
  public typealias ImagePath = PosterPath

  public var rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }
}

extension PosterSize: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) {
    self.rawValue = value
  }
}
