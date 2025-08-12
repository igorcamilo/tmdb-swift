import Dependencies
import DependenciesMacros
import Foundation

@DependencyClient struct MovieClient {
  var movieDetails:
    @Sendable (
      _ id: Movie.ID,
      _ appending: [MovieDetailsAppendingOptions],
      _ locale: Locale?,
      _ accessToken: String
    ) async throws -> MovieDetails

  var movies:
    @Sendable (
      _ list: MovieList,
      _ locale: Locale?,
      _ accessToken: String
    ) async throws -> Page<Movie>
}

extension MovieClient: DependencyKey {
  static let liveValue = MovieClient(
    movieDetails: { id, appending, locale, accessToken in
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
  var movieClient: MovieClient {
    get { self[MovieClient.self] }
    set { self[MovieClient.self] = newValue }
  }
}
