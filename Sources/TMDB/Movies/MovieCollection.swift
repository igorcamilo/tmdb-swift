//
//  MovieCollection.swift
//  TMDB
//
//  Created by Igor Camilo on 13.08.25.
//

public struct MovieCollection: Codable, Hashable, Identifiable, Sendable {
  public var id: ID
  public var name: String
  public var posterPath: PosterPath?
  public var backdropPath: BackdropPath?

  public init(
    id: ID,
    name: String,
    posterPath: PosterPath? = nil,
    backdropPath: BackdropPath? = nil
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
