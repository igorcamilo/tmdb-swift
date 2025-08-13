//
//  ProfilePath.swift
//  TMDB
//
//  Created by Igor Camilo on 13.08.25.
//

public struct ProfilePath: Codable, Hashable, ImagePath, Sendable {
  public static var keyPath: KeyPath<ImageConfiguration, [ProfileSize]> {
    \.profileSizes
  }

  public var rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }
}

extension ProfilePath: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) {
    self.rawValue = value
  }
}
