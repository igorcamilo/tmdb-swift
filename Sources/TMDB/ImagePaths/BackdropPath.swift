//
//  BackdropPath.swift
//  TMDB
//
//  Created by Igor Camilo on 13.08.25.
//

public struct BackdropPath: Codable, Hashable, ImagePath, Sendable {
  public static var keyPath: KeyPath<ImageConfiguration, [BackdropSize]> {
    \.backdropSizes
  }

  public var rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }
}

extension BackdropPath: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) {
    self.rawValue = value
  }
}
