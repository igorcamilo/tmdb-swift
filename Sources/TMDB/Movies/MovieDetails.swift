public struct MovieDetails: Codable, Hashable, Identifiable, Sendable {
  public var adult: Bool
  public var backdropPath: String?
  public var belongsToCollection: MovieCollection?
  public var budget: Int
  public var genres: [Genre]
  public var homepage: String?
  public var id: Movie.ID
  public var imdbID: String?
  public var originCountry: [String]?
  public var originalLanguage: String
  public var originalTitle: String
  public var overview: String
  public var popularity: Double
  public var posterPath: PosterPath?
  public var productionCompanies: [ProductionCompany]
  public var productionCountries: [Country]
  public var releaseDate: String
  public var revenue: Int
  public var runtime: Int
  public var spokenLanguages: [Language]
  public var status: String
  public var tagline: String
  public var title: String
  public var video: Bool
  public var voteAverage: Double
  public var voteCount: Int

  public init(
    adult: Bool,
    backdropPath: String?,
    belongsToCollection: MovieCollection?,
    budget: Int,
    genres: [Genre],
    homepage: String?,
    id: Movie.ID,
    imdbID: String?,
    originCountry: [String]?,
    originalLanguage: String,
    originalTitle: String,
    overview: String,
    popularity: Double,
    posterPath: PosterPath?,
    productionCompanies: [ProductionCompany],
    productionCountries: [Country],
    releaseDate: String,
    revenue: Int,
    runtime: Int,
    spokenLanguages: [Language],
    status: String,
    tagline: String,
    title: String,
    video: Bool,
    voteAverage: Double,
    voteCount: Int
  ) {
    self.adult = adult
    self.backdropPath = backdropPath
    self.belongsToCollection = belongsToCollection
    self.budget = budget
    self.genres = genres
    self.homepage = homepage
    self.id = id
    self.imdbID = imdbID
    self.originCountry = originCountry
    self.originalLanguage = originalLanguage
    self.originalTitle = originalTitle
    self.overview = overview
    self.popularity = popularity
    self.posterPath = posterPath
    self.productionCompanies = productionCompanies
    self.productionCountries = productionCountries
    self.releaseDate = releaseDate
    self.revenue = revenue
    self.runtime = runtime
    self.spokenLanguages = spokenLanguages
    self.status = status
    self.tagline = tagline
    self.title = title
    self.video = video
    self.voteAverage = voteAverage
    self.voteCount = voteCount
  }

  private enum CodingKeys: String, CodingKey {
    case adult
    case backdropPath = "backdrop_path"
    case belongsToCollection = "belongs_to_collection"
    case budget
    case genres
    case homepage
    case id
    case imdbID = "imdb_id"
    case originCountry = "origin_country"
    case originalLanguage = "original_language"
    case originalTitle = "original_title"
    case overview
    case popularity
    case posterPath = "poster_path"
    case productionCompanies = "production_companies"
    case productionCountries = "production_countries"
    case releaseDate = "release_date"
    case revenue
    case runtime
    case spokenLanguages = "spoken_languages"
    case status
    case tagline
    case title
    case video
    case voteAverage = "vote_average"
    case voteCount = "vote_count"
  }
}
