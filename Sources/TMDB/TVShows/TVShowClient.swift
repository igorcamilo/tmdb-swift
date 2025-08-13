//
//  TVShowClient.swift
//  TMDB
//
//  Created by Igor Camilo on 13.08.25.
//

import Dependencies
import DependenciesMacros
import Foundation

@DependencyClient struct TVShowClient {
  var details:
    @Sendable (
      _ id: TVShow.ID,
      _ appending: [TVShowAppendOptions],
      _ locale: Locale?,
      _ accessToken: AccessToken
    ) async throws -> TVShowDetails

  var tvShows:
    @Sendable (
      _ list: TVShowList,
      _ locale: Locale?,
      _ accessToken: AccessToken
    ) async throws -> Page<TVShow>
}

extension TVShowClient: DependencyKey {
  static let liveValue = TVShowClient(
    details: { id, appending, locale, accessToken in
      var queryItems: [URLQueryItem] = []
      if !appending.isEmpty {
        let value = appending.map(\.rawValue).joined(separator: ",")
        queryItems.append(URLQueryItem(name: "append_to_response", value: value))
      }
      @Dependency(\.sharedClient) var sharedClient
      return try await sharedClient.fetch(
        relativePath: "tv/\(id)",
        queryItems: queryItems.isEmpty ? nil : queryItems,
        locale: locale,
        accessToken: accessToken
      )
    },
    tvShows: { list, locale, accessToken in
      @Dependency(\.sharedClient) var sharedClient
      return try await sharedClient.fetch(
        relativePath: list.relativePath,
        queryItems: nil,
        locale: locale,
        accessToken: accessToken
      )
    }
  )
}

extension DependencyValues {
  var tvShowClient: TVShowClient {
    get { self[TVShowClient.self] }
    set { self[TVShowClient.self] = newValue }
  }
}
