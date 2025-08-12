public struct BackdropSize: Codable, Hashable, RawRepresentable, Sendable {
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

public struct LogoSize: Codable, Hashable, RawRepresentable, Sendable {
  public var rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }
}

extension LogoSize: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) {
    self.rawValue = value
  }
}

public struct PosterSize: Codable, Hashable, RawRepresentable, Sendable {
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

public struct ProfileSize: Codable, Hashable, RawRepresentable, Sendable {
  public var rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }
}

extension ProfileSize: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) {
    self.rawValue = value
  }
}

public struct StillSize: Codable, Hashable, RawRepresentable, Sendable {
  public var rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }
}

extension StillSize: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) {
    self.rawValue = value
  }
}
