//
//  ConfigurationDetails.swift
//  TMDB
//
//  Created by Igor Camilo on 13.08.25.
//

public struct ConfigurationDetails: Codable, Hashable, Sendable {
  public var changeKeys: [String]
  public var images: ImageConfiguration

  public init(
    changeKeys: [String],
    images: ImageConfiguration
  ) {
    self.changeKeys = changeKeys
    self.images = images
  }

  private enum CodingKeys: String, CodingKey {
    case changeKeys = "change_keys"
    case images
  }
}
