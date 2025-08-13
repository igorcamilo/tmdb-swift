public struct Movie: Codable, Hashable, Identifiable, Sendable {
  public var adult: Bool
  public var backdropPath: BackdropPath?
  public var genreIDs: [Genre.ID]?
  public var id: ID
  public var originalLanguage: String
  public var originalTitle: String
  public var overview: String
  public var popularity: Double?
  public var posterPath: PosterPath?
  public var releaseDate: String?
  public var title: String
  public var video: Bool?
  public var voteAverage: Double?
  public var voteCount: Int?

  public init(
    adult: Bool,
    id: ID,
    originalLanguage: String,
    originalTitle: String,
    overview: String,
    title: String
  ) {
    self.adult = adult
    self.id = id
    self.originalLanguage = originalLanguage
    self.originalTitle = originalTitle
    self.overview = overview
    self.title = title
  }

  public struct ID: Codable, Hashable, RawRepresentable, Sendable {
    public var rawValue: Int

    public init(rawValue: Int) {
      self.rawValue = rawValue
    }
  }

  private enum CodingKeys: String, CodingKey {
    case adult
    case backdropPath = "backdrop_path"
    case genreIDs = "genre_ids"
    case id
    case originalLanguage = "original_language"
    case originalTitle = "original_title"
    case overview
    case popularity
    case posterPath = "poster_path"
    case releaseDate = "release_date"
    case title
    case video
    case voteAverage = "vote_average"
    case voteCount = "vote_count"
  }
}

extension Movie.ID: ExpressibleByIntegerLiteral {
  public init(integerLiteral value: Int) {
    self.rawValue = value
  }
}
