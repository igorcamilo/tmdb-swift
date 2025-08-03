public struct Genre: Codable, Hashable, Identifiable, Sendable {
  public var id: ID
  public var name: String

  public init(
    id: ID,
    name: String
  ) {
    self.id = id
    self.name = name
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
