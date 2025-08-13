//
//  ConfigurationClient.swift
//  TMDB
//
//  Created by Igor Camilo on 13.08.25.
//

import Dependencies
import DependenciesMacros

@DependencyClient public struct ConfigurationClient: Sendable {
  var details:
    @Sendable (
      _ accessToken: AccessToken
    ) async throws -> ConfigurationDetails

  var languages:
    @Sendable (
      _ accessToken: AccessToken
    ) async throws -> [Language]

  var primaryTranslations:
    @Sendable (
      _ accessToken: AccessToken
    ) async throws -> [String]
}

extension ConfigurationClient: DependencyKey {
  public static let liveValue = ConfigurationClient(
    details: { accessToken in
      @Dependency(\.sharedClient) var sharedClient
      return try await sharedClient.fetch(
        relativePath: "configuration",
        queryItems: nil,
        locale: nil,
        accessToken: accessToken
      )
    },
    languages: { accessToken in
      @Dependency(\.sharedClient) var sharedClient
      return try await sharedClient.fetch(
        relativePath: "configuration/languages",
        queryItems: nil,
        locale: nil,
        accessToken: accessToken
      )
    },
    primaryTranslations: { accessToken in
      @Dependency(\.sharedClient) var sharedClient
      return try await sharedClient.fetch(
        relativePath: "configuration/primary_translations",
        queryItems: nil,
        locale: nil,
        accessToken: accessToken
      )
    }
  )
}

extension DependencyValues {
  var configurationClient: ConfigurationClient {
    get { self[ConfigurationClient.self] }
    set { self[ConfigurationClient.self] = newValue }
  }
}
