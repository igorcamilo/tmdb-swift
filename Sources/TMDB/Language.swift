public struct Language: Codable, Hashable, Sendable {
  public var englishName: String
  public var iso6391: String
  public var name: String

  public init(
    englishName: String,
    iso6391: String,
    name: String
  ) {
    self.englishName = englishName
    self.iso6391 = iso6391
    self.name = name
  }

  public enum CodingKeys: String, CodingKey {
    case englishName = "english_name"
    case iso6391 = "iso_639_1"
    case name
  }
}
