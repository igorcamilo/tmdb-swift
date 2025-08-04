extension TMDBClient {
  public func movieDetails(
    id: Movie.ID,
    appending: [MovieDetailsAppendingOptions] = MovieDetailsAppendingOptions.allCases
  ) async throws -> MovieDetails {
    var queryItems: [String: String] = [:]
    if !appending.isEmpty {
      let value = appending.map(\.rawValue).joined(separator: ",")
      queryItems["append_to_response"] = value
    }
    let urlRequest = try urlRequest(
      relativePath: "movie/\(id.rawValue)",
      queryItems: queryItems
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
