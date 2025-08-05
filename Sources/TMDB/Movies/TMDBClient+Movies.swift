import Foundation

#if canImport(FoundationNetworking)
  import FoundationNetworking
#endif

extension TMDBClient {
  public func movieDetails(
    id: Movie.ID,
    appending: [MovieDetailsAppendingOptions] = MovieDetailsAppendingOptions.allCases
  ) async throws -> MovieDetails {
    var queryItems: [URLQueryItem] = []
    if !appending.isEmpty {
      let value = appending.map(\.rawValue).joined(separator: ",")
      queryItems.append(URLQueryItem(name: "append_to_response", value: value))
    }
    let urlRequest = try urlRequest(
      relativePath: "movie/\(id.rawValue)",
      queryItems: queryItems.isEmpty ? nil : queryItems
    )
    let response = try await performRequest(urlRequest)
    if response.statusCode == 200 {
      return try decoder.decode(MovieDetails.self, from: response.data)
    } else {
      throw try decoder.decode(TMDBError.self, from: response.data)
    }
  }

  public func movies(list: MovieList) async throws -> Page<Movie> {
    let urlRequest = try urlRequest(relativePath: list.relativePath)
    let response = try await performRequest(urlRequest)
    if response.statusCode == 200 {
      return try decoder.decode(Page<Movie>.self, from: response.data)
    } else {
      throw try decoder.decode(TMDBError.self, from: response.data)
    }
  }
}
