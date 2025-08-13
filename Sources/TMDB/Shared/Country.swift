//
//  Country.swift
//  TMDB
//
//  Created by Igor Camilo on 13.08.25.
//

public struct Country: Codable, Hashable, Sendable {
  public var iso31661: String
  public var name: String

  public init(
    iso31661: String,
    name: String
  ) {
    self.iso31661 = iso31661
    self.name = name
  }

  private enum CodingKeys: String, CodingKey {
    case iso31661 = "iso_3166_1"
    case name
  }
}
