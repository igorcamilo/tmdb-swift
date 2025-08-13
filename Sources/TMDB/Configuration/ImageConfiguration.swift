//
//  ImageConfiguration.swift
//  TMDB
//
//  Created by Igor Camilo on 13.08.25.
//

import Foundation

public struct ImageConfiguration: Codable, Hashable, Sendable {
  public var baseURL: String
  public var secureBaseURL: String
  public var backdropSizes: [BackdropSize]
  public var logoSizes: [LogoSize]
  public var posterSizes: [PosterSize]
  public var profileSizes: [ProfileSize]
  public var stillSizes: [StillSize]

  public init(
    baseURL: String = "",
    secureBaseURL: String = "",
    backdropSizes: [BackdropSize] = [],
    logoSizes: [LogoSize] = [],
    posterSizes: [PosterSize] = [],
    profileSizes: [ProfileSize] = [],
    stillSizes: [StillSize] = []
  ) {
    self.baseURL = baseURL
    self.secureBaseURL = secureBaseURL
    self.backdropSizes = backdropSizes
    self.logoSizes = logoSizes
    self.posterSizes = posterSizes
    self.profileSizes = profileSizes
    self.stillSizes = stillSizes
  }

  public func size<T: RawRepresentable<String>>(
    width: Double? = nil,
    from list: KeyPath<ImageConfiguration, [T]>
  ) -> T? {
    guard let width else {
      return self[keyPath: list].last
    }
    let size = self[keyPath: list].first {
      guard
        $0.rawValue.hasPrefix("w"),
        let elementWidth = Double($0.rawValue.dropFirst())
      else {
        return false
      }
      return elementWidth >= width
    }
    return size ?? self[keyPath: list].last
  }

  public func url<T: ImagePath>(
    size: T.ImageSize,
    path: T
  ) -> URL? {
    guard
      let url = URL(string: secureBaseURL)
    else {
      return nil
    }
    return url.appendingPathComponent(
      size.rawValue + path.rawValue
    )
  }

  public func url<T: ImagePath>(
    width: Double? = nil,
    path: T
  ) -> URL? {
    guard
      let size = size(width: width, from: T.keyPath)
    else {
      return nil
    }
    return url(size: size, path: path)
  }

  private enum CodingKeys: String, CodingKey {
    case baseURL = "base_url"
    case secureBaseURL = "secure_base_url"
    case backdropSizes = "backdrop_sizes"
    case logoSizes = "logo_sizes"
    case posterSizes = "poster_sizes"
    case profileSizes = "profile_sizes"
    case stillSizes = "still_sizes"
  }
}
