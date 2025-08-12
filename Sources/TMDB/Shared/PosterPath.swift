public struct PosterPath: Codable, Hashable, ImagePath, Sendable {
  public static var keyPath: KeyPath<Images, [PosterSize]> {
    \.posterSizes
  }

  public var rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }
}

extension PosterPath: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) {
    self.rawValue = value
  }
}
