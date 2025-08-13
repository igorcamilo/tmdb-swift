//
//  StillPath.swift
//  TMDB
//
//  Created by Igor Camilo on 13.08.25.
//

public struct StillPath: Codable, Hashable, ImagePath, Sendable {
  public static var keyPath: KeyPath<ImageConfiguration, [StillSize]> {
    \.stillSizes
  }

  public var rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }
}

extension StillPath: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) {
    self.rawValue = value
  }
}
