//
//  APIError.swift
//  TMDB
//
//  Created by Igor Camilo on 13.08.25.
//

public struct APIError: Codable, Error, Hashable, Sendable {
  public var statusCode: Int
  public var statusMessage: String
  public var success: Bool

  public init(
    statusCode: Int,
    statusMessage: String,
    success: Bool
  ) {
    self.statusCode = statusCode
    self.statusMessage = statusMessage
    self.success = success
  }

  private enum CodingKeys: String, CodingKey {
    case statusCode = "status_code"
    case statusMessage = "status_message"
    case success
  }
}
