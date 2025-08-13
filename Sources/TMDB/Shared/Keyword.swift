//
//  Keyword.swift
//  TMDB
//
//  Created by Igor Camilo on 13.08.25.
//

public struct Keyword: Codable, Hashable, Identifiable, Sendable {
  public var id: ID
  public var name: String

  public init(
    id: ID,
    name: String
  ) {
    self.id = id
    self.name = name
  }

  public struct ID: Codable, Hashable, RawRepresentable, Sendable {
    public var rawValue: Int

    public init(rawValue: Int) {
      self.rawValue = rawValue
    }
  }
}

extension Keyword.ID: ExpressibleByIntegerLiteral {
  public init(integerLiteral value: Int) {
    self.rawValue = value
  }
}
