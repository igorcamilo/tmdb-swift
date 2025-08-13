//
//  TVShow.swift
//  TMDB
//
//  Created by Igor Camilo on 13.08.25.
//

public struct TVShow: Codable, Hashable, Identifiable, Sendable {
  public var adult = false
  public var backdropPath: BackdropPath?
  public var genreIDs: [Genre.ID] = []
  public var id: ID
  public var originCountry: [String] = []
  public var originalLanguage = ""
  public var originalName = ""
  public var overview = ""
  public var popularity = 0.0
  public var posterPath: PosterPath?
  public var firstAirDate = ""
  public var name: String
  public var voteAverage = 0.0
  public var voteCount = 0

  public init(
    id: ID,
    name: String
  ) {
    self.id = id
    self.name = name
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
    case originCountry = "origin_country"
    case originalLanguage = "original_language"
    case originalName = "original_name"
    case overview
    case popularity
    case posterPath = "poster_path"
    case firstAirDate = "first_air_date"
    case name
    case voteAverage = "vote_average"
    case voteCount = "vote_count"
  }
}

extension TVShow.ID: ExpressibleByIntegerLiteral {
  public init(integerLiteral value: Int) {
    self.rawValue = value
  }
}
