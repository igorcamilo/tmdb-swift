//
//  MovieDetails.swift
//  TMDB
//
//  Created by Igor Camilo on 13.08.25.
//

public struct MovieDetails: Codable, Hashable, Identifiable, Sendable {
  public var adult = false
  public var backdropPath: BackdropPath?
  public var belongsToCollection: MovieCollection?
  public var budget = 0
  public var genres: [Genre] = []
  public var homepage: String?
  public var id: Movie.ID
  public var imdbID: String?
  public var originCountry: [String]?
  public var originalLanguage = ""
  public var originalTitle = ""
  public var overview = ""
  public var popularity = 0.0
  public var posterPath: PosterPath?
  public var productionCompanies: [ProductionCompany] = []
  public var productionCountries: [Country] = []
  public var releaseDate = ""
  public var revenue = 0
  public var runtime = 0
  public var spokenLanguages: [Language] = []
  public var status = ""
  public var tagline = ""
  public var title = ""
  public var video = false
  public var voteAverage = 0.0
  public var voteCount = 0
  public var keywords: Keywords?
  public var similar: Page<Movie>?

  public init(id: Movie.ID) {
    self.id = id
  }

  public struct Keywords: Codable, Hashable, Sendable {
    public var keywords: [Keyword]

    public init(keywords: [Keyword] = []) {
      self.keywords = keywords
    }
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
    case keywords
    case similar
  }
}
