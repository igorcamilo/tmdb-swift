public struct Genre: Codable, Hashable, Identifiable, Sendable {
  public var id: ID = 0
  public var name = ""

  public init() {
    // Makes initializer public
  }

  public struct ID: Codable, Hashable, RawRepresentable, Sendable {
    public var rawValue: Int

    public init(rawValue: Int) {
      self.rawValue = rawValue
    }
  }
}

extension Genre.ID: ExpressibleByIntegerLiteral {
  public init(integerLiteral value: Int) {
    self.rawValue = value
  }
}
