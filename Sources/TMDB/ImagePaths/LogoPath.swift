//
//  LogoPath.swift
//  TMDB
//
//  Created by Igor Camilo on 13.08.25.
//

public struct LogoPath: Codable, Hashable, ImagePath, Sendable {
  public static var keyPath: KeyPath<ImageConfiguration, [LogoSize]> {
    \.logoSizes
  }

  public var rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }
}

extension LogoPath: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) {
    self.rawValue = value
  }
}
