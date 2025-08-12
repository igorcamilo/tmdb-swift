public protocol ImagePath: RawRepresentable<String> {
  associatedtype ImageSize: RawRepresentable<String>

  static var keyPath: KeyPath<ConfigurationDetails.Images, [ImageSize]> { get }
}

public struct BackdropPath: Codable, Hashable, ImagePath, Sendable {
  public static var keyPath: KeyPath<ConfigurationDetails.Images, [BackdropSize]> {
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

public struct LogoPath: Codable, Hashable, ImagePath, Sendable {
  public static var keyPath: KeyPath<ConfigurationDetails.Images, [LogoSize]> {
    \.logoSizes
  }

  public var rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }
}

extension LogoPath: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) {
    self.rawValue = value
  }
}

public struct PosterPath: Codable, Hashable, ImagePath, Sendable {
  public static var keyPath: KeyPath<ConfigurationDetails.Images, [PosterSize]> {
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

public struct ProfilePath: Codable, Hashable, ImagePath, Sendable {
  public static var keyPath: KeyPath<ConfigurationDetails.Images, [ProfileSize]> {
    \.profileSizes
  }

  public var rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }
}

extension ProfilePath: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) {
    self.rawValue = value
  }
}

public struct StillPath: Codable, Hashable, ImagePath, Sendable {
  public static var keyPath: KeyPath<ConfigurationDetails.Images, [StillSize]> {
    \.stillSizes
  }

  public var rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }
}

extension StillPath: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) {
    self.rawValue = value
  }
}
