public struct Country: Codable, Hashable, Sendable {
  public var iso31661 = ""
  public var name = ""

  public init() {
    // Makes initializer public
  }

  private enum CodingKeys: String, CodingKey {
    case iso31661 = "iso_3166_1"
    case name
  }
}
