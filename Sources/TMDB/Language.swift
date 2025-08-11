public struct Language: Codable, Hashable, Sendable {
  public var englishName = ""
  public var iso6391 = ""
  public var name = ""

  public init() {
    // Makes initializer public
  }

  public enum CodingKeys: String, CodingKey {
    case englishName = "english_name"
    case iso6391 = "iso_639_1"
    case name
  }
}
