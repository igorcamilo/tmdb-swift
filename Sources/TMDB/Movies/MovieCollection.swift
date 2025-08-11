public struct MovieCollection: Codable, Hashable, Identifiable, Sendable {
  public var id: ID = 0
  public var name = ""
  public var posterPath: PosterPath?
  public var backdropPath: BackdropPath?

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
    case name
    case posterPath = "poster_path"
    case backdropPath = "backdrop_path"
  }
}

extension MovieCollection.ID: ExpressibleByIntegerLiteral {
  public init(integerLiteral value: Int) {
    self.rawValue = value
  }
}
