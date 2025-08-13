//
//  TVShowDetails.swift
//  TMDB
//
//  Created by Igor Camilo on 13.08.25.
//

public struct TVShowDetails: Codable, Hashable, Identifiable, Sendable {
  public var adult = false
  public var backdropPath: BackdropPath?
  // public var createdBy: [CreatedBy]
  public var episodeRunTime: [Int] = []
  public var firstAirDate = ""
  public var genres: [Genre] = []
  public var homepage = ""
  public var id: TVShow.ID
  public var inProduction = false
  public var languages: [String] = []
  public var lastAirDate: String?
  // public var lastEpisodeToAir: Episode?
  public var name = ""
  // public var nextEpisodeToAir: Episode?
  // public var networks: [Network]
  public var numberOfEpisodes: Int?
  public var numberOfSeasons = 0
  public var originCountry: [String] = []
  public var originalLanguage = ""
  public var originalName = ""
  public var overview = ""
  public var popularity = 0.0
  public var posterPath: PosterPath?
  public var productionCompanies: [ProductionCompany] = []
  public var productionCountries: [Country] = []
  // public var seasons: [Season]
  public var spokenLanguages: [Language] = []
  public var status = ""
  public var tagline = ""
  public var type = ""
  public var voteAverage = 0.0
  public var voteCount = 0
  public var keywords: Keywords?
  public var similar: Page<TVShow>?

  public init(id: TVShow.ID) {
    self.id = id
  }

  public struct Keywords: Codable, Hashable, Sendable {
    public var results: [Keyword]

    public init(results: [Keyword] = []) {
      self.results = results
    }
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
    case keywords
    case similar
  }
}
