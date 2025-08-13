//
//  StillSize.swift
//  TMDB
//
//  Created by Igor Camilo on 13.08.25.
//

public struct StillSize: Codable, Hashable, RawRepresentable, Sendable {
  public var rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }
}

extension StillSize: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) {
    self.rawValue = value
  }
}
