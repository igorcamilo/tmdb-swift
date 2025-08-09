public struct BackdropPath: Codable, Hashable, ImagePath, Sendable {
  public static var keyPath: KeyPath<Images, [BackdropSize]> {
    \.backdropSizes
  }

  public var rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }
}

extension BackdropPath: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) {
    self.rawValue = value
  }
}
