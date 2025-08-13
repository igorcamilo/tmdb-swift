//
//  Movie.swift
//  TMDB
//
//  Created by Igor Camilo on 13.08.25.
//

public struct Movie: Codable, Hashable, Identifiable, Sendable {
  public var adult = false
  public var backdropPath: BackdropPath?
  public var genreIDs: [Genre.ID]?
  public var id: ID
  public var originalLanguage = ""
  public var originalTitle = ""
  public var overview = ""
  public var popularity: Double?
  public var posterPath: PosterPath?
  public var releaseDate: String?
  public var title: String
  public var video: Bool?
  public var voteAverage: Double?
  public var voteCount: Int?

  public init(
    id: ID,
    title: String
  ) {
    self.id = id
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
