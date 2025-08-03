import Foundation
import TMDB
import Testing

#if canImport(FoundationNetworking)
  import FoundationNetworking
#endif

struct ClientMovieTests {
  @Test
  func movieDetailsSuccess() async throws {
    // Setup
    let urlRequestStorage = TestStorage<URLRequest>()
    // Test
    let client = Client(accessToken: "ABC123") {
      await urlRequestStorage.setValue($0)
      return Response(data: .movieDetails1, statusCode: 200)
    }
    await #expect(throws: Never.self) {
      try await client.movieDetails(id: 123)
    }
    // Verify
    let urlRequest = try #require(await urlRequestStorage.value)
    #expect(urlRequest.url?.absoluteString == "https://api.themoviedb.org/3/movie/123")
    #expect(urlRequest.httpMethod == "GET")
    #expect(urlRequest.httpBody == nil)
    #expect(
      urlRequest.allHTTPHeaderFields == [
        "Authorization": "Bearer ABC123",
        "Accept": "application/json",
      ]
    )
  }

  @Test
  func movieDetailsFailure() async throws {
    // Setup
    let urlRequestStorage = TestStorage<URLRequest>()
    // Test
    let client = Client(accessToken: "DEF456") {
      await urlRequestStorage.setValue($0)
      return Response(data: .errorContent, statusCode: 400)
    }
    await #expect(throws: ErrorContent.self) {
      try await client.movieDetails(id: 456)
    }
    // Verify
    let urlRequest = try #require(await urlRequestStorage.value)
    #expect(urlRequest.url?.absoluteString == "https://api.themoviedb.org/3/movie/456")
    #expect(urlRequest.httpMethod == "GET")
    #expect(urlRequest.httpBody == nil)
    #expect(
      urlRequest.allHTTPHeaderFields == [
        "Authorization": "Bearer DEF456",
        "Accept": "application/json",
      ]
    )
  }

  @Test(
    arguments: [
      (MovieList.nowPlaying, "https://api.themoviedb.org/3/movie/now_playing"),
      (MovieList.popular, "https://api.themoviedb.org/3/movie/popular"),
      (MovieList.topRated, "https://api.themoviedb.org/3/movie/top_rated"),
      (MovieList.upcoming, "https://api.themoviedb.org/3/movie/upcoming"),
      (MovieList.similar(123), "https://api.themoviedb.org/3/movie/123/similar"),
      (MovieList.trending(.day), "https://api.themoviedb.org/3/trending/movie/day"),
    ]
  )
  func moviesSuccess(list: MovieList, absoluteURLString: String) async throws {
    // Setup
    let urlRequestStorage = TestStorage<URLRequest>()
    let data: Data
    switch list {
    case .nowPlaying:
      data = .nowPlayingMovies
    case .popular:
      data = .popularMovies
    case .topRated:
      data = .topRatedMovies
    case .upcoming:
      data = .upcomingMovies
    case .similar:
      data = .similarMovies
    case .trending:
      data = .trendingMovies
    }
    // Test
    let client = Client(accessToken: "ABC123") {
      await urlRequestStorage.setValue($0)
      return Response(data: data, statusCode: 200)
    }
    await #expect(throws: Never.self) {
      try await client.movies(list: list)
    }
    // Verify
    let urlRequest = try #require(await urlRequestStorage.value)
    #expect(urlRequest.url?.absoluteString == absoluteURLString)
    #expect(urlRequest.httpMethod == "GET")
    #expect(urlRequest.httpBody == nil)
    #expect(
      urlRequest.allHTTPHeaderFields == [
        "Authorization": "Bearer ABC123",
        "Accept": "application/json",
      ]
    )
  }

  @Test
  func moviesFailure() async throws {
    // Setup
    let urlRequestStorage = TestStorage<URLRequest>()
    // Test
    let client = Client(accessToken: "DEF456") {
      await urlRequestStorage.setValue($0)
      return Response(data: .errorContent, statusCode: 400)
    }
    await #expect(throws: ErrorContent.self) {
      try await client.movies(list: .trending(.week))
    }
    // Verify
    let urlRequest = try #require(await urlRequestStorage.value)
    #expect(urlRequest.url?.absoluteString == "https://api.themoviedb.org/3/trending/movie/week")
    #expect(urlRequest.httpMethod == "GET")
    #expect(urlRequest.httpBody == nil)
    #expect(
      urlRequest.allHTTPHeaderFields == [
        "Authorization": "Bearer DEF456",
        "Accept": "application/json",
      ]
    )
  }
}
