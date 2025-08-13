//
//  MovieClient.swift
//  TMDB
//
//  Created by Igor Camilo on 13.08.25.
//

import Dependencies
import DependenciesMacros
import Foundation

@DependencyClient public struct MovieClient: Sendable {
  public var details:
    @Sendable (
      _ id: Movie.ID,
      _ appending: [MovieAppendOptions],
      _ locale: Locale?,
      _ accessToken: AccessToken
    ) async throws -> MovieDetails

  public var movies:
    @Sendable (
      _ list: MovieList,
      _ locale: Locale?,
      _ accessToken: AccessToken
    ) async throws -> Page<Movie>
}

extension MovieClient: DependencyKey {
  public static let liveValue = MovieClient(
    details: { id, appending, locale, accessToken in
      var queryItems: [URLQueryItem] = []
      if !appending.isEmpty {
        let value = appending.map(\.rawValue).joined(separator: ",")
        queryItems.append(URLQueryItem(name: "append_to_response", value: value))
      }
      @Dependency(\.sharedClient) var sharedClient
      return try await sharedClient.fetch(
        relativePath: "movie/\(id)",
        queryItems: queryItems,
        locale: locale,
        accessToken: accessToken
      )
    },
    movies: { list, locale, accessToken in
      @Dependency(\.sharedClient) var sharedClient
      return try await sharedClient.fetch(
        relativePath: "movie/popular",
        queryItems: nil,
        locale: locale,
        accessToken: accessToken
      )
    }
  )
}

extension DependencyValues {
  public var movieClient: MovieClient {
    get { self[MovieClient.self] }
    set { self[MovieClient.self] = newValue }
  }
}
