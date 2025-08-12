public struct ProductionCompany: Codable, Hashable, Identifiable, Sendable {
  public var id: ID = 0
  public var logoPath: String?
  public var name = ""
  public var originCountry = ""

  public init() {
    // Makes initializer public
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
