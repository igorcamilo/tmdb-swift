public struct TVShowDetails: Codable, Hashable, Identifiable, Sendable {
  public var adult: Bool
  public var backdropPath: BackdropPath?
  // public var createdBy: [CreatedBy]
  // public var episodeRunTime: [Int]
  public var firstAirDate: String
  public var genres: [Genre]
  public var homepage: String
  public var id: TVShow.ID
  public var inProduction: Bool
  public var languages: [String]
  public var lastAirDate: String?
  // public var lastEpisodeToAir: Episode?
  public var name: String
  // public var nextEpisodeToAir: Episode?
  // public var networks: [Network]
  public var numberOfEpisodes: Int?
  public var numberOfSeasons: Int
  public var originCountry: [String]
  public var originalLanguage: String
  public var originalName: String
  public var overview: String
  public var popularity: Double
  public var posterPath: PosterPath?
  public var productionCompanies: [ProductionCompany]
  public var productionCountries: [Country]
  // public var seasons: [Season]
  public var spokenLanguages: [Language]
  public var status: String
  public var tagline: String
  public var type: String
  public var voteAverage: Double
  public var voteCount: Int
  public var similar: Page<TVShow>?

  public init(
    adult: Bool,
    backdropPath: BackdropPath?,
    firstAirDate: String,
    genres: [Genre],
    homepage: String,
    id: TVShow.ID,
    inProduction: Bool,
    languages: [String],
    lastAirDate: String?,
    name: String,
    numberOfEpisodes: Int?,
    numberOfSeasons: Int,
    originCountry: [String],
    originalLanguage: String,
    originalName: String,
    overview: String,
    popularity: Double,
    posterPath: PosterPath?,
    productionCompanies: [ProductionCompany],
    productionCountries: [Country],
    spokenLanguages: [Language],
    status: String,
    tagline: String,
    type: String,
    voteAverage: Double,
    voteCount: Int,
    similar: Page<TVShow>?
  ) {
    self.adult = adult
    self.backdropPath = backdropPath
    self.firstAirDate = firstAirDate
    self.genres = genres
    self.homepage = homepage
    self.id = id
    self.inProduction = inProduction
    self.languages = languages
    self.lastAirDate = lastAirDate
    self.name = name
    self.numberOfEpisodes = numberOfEpisodes
    self.numberOfSeasons = numberOfSeasons
    self.originCountry = originCountry
    self.originalLanguage = originalLanguage
    self.originalName = originalName
    self.overview = overview
    self.popularity = popularity
    self.posterPath = posterPath
    self.productionCompanies = productionCompanies
    self.productionCountries = productionCountries
    self.spokenLanguages = spokenLanguages
    self.status = status
    self.tagline = tagline
    self.type = type
    self.voteAverage = voteAverage
    self.voteCount = voteCount
    self.similar = similar
  }

  private enum CodingKeys: String, CodingKey {
    case adult
    case backdropPath = "backdrop_path"
    case firstAirDate = "first_air_date"
    case genres
    case homepage
    case id
    case inProduction = "in_production"
    case languages
    case lastAirDate = "last_air_date"
    case name
    case numberOfEpisodes = "number_of_episodes"
    case numberOfSeasons = "number_of_seasons"
    case originCountry = "origin_country"
    case originalLanguage = "original_language"
    case originalName = "original_name"
    case overview
    case popularity
    case posterPath = "poster_path"
    case productionCompanies = "production_companies"
    case productionCountries = "production_countries"
    case spokenLanguages = "spoken_languages"
    case status
    case tagline
    case type
    case voteAverage = "vote_average"
    case voteCount = "vote_count"
    case similar
  }
}
