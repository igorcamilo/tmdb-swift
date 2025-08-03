public struct ProductionCompany: Codable, Hashable, Identifiable, Sendable {
  public var id: ID
  public var logoPath: String?
  public var name: String
  public var originCountry: String

  public init(
    id: ID,
    logoPath: String?,
    name: String,
    originCountry: String
  ) {
    self.id = id
    self.logoPath = logoPath
    self.name = name
    self.originCountry = originCountry
  }

  public struct ID: Codable, Hashable, RawRepresentable, Sendable {
    public var rawValue: Int

    public init(rawValue: Int) {
      self.rawValue = rawValue
    }
  }

  private enum CodingKeys: String, CodingKey {
    case id
    case logoPath = "logo_path"
    case name
    case originCountry = "origin_country"
  }
}

extension ProductionCompany.ID: ExpressibleByIntegerLiteral {
  public init(integerLiteral value: Int) {
    self.init(rawValue: value)
  }
}
