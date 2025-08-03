public struct MovieCollection: Codable, Hashable, Identifiable, Sendable {
  public var id: ID
  public var name: String
  public var posterPath: PosterPath?
  public var backdropPath: String?

  public init(
    id: ID,
    name: String,
    posterPath: PosterPath?,
    backdropPath: String?
  ) {
    self.id = id
    self.name = name
    self.posterPath = posterPath
    self.backdropPath = backdropPath
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
