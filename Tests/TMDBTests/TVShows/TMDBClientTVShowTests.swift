import Foundation
import TMDB
import Testing

#if canImport(FoundationNetworking)
  import FoundationNetworking
#endif

struct TMDBClientTVShowTests {
  @Test
  func tvShowDetailsSuccess() async throws {
    // Setup
    let urlRequestStorage = TestStorage<URLRequest>()
    // Test
    let client = TMDBClient(accessToken: "ABC123") {
      await urlRequestStorage.setValue($0)
      return Response(data: .tvShowDetails1, statusCode: 200)
    }
    await #expect(throws: Never.self) {
      try await client.tvShowDetails(id: 123)
    }
    // Verify
    let urlRequest = try #require(await urlRequestStorage.value)
    let absoluteURLString = #"""
      https://api.themoviedb.org/3/tv/123?append_to_response=similar
      """#
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
  func tvShowDetailsFailure() async throws {
    // Setup
    let urlRequestStorage = TestStorage<URLRequest>()
    // Test
    let client = TMDBClient(accessToken: "DEF456") {
      await urlRequestStorage.setValue($0)
      return Response(data: .tmdbError, statusCode: 400)
    }
    await #expect(throws: TMDBError.self) {
      try await client.tvShowDetails(id: 456, appending: [])
    }
    // Verify
    let urlRequest = try #require(await urlRequestStorage.value)
    #expect(urlRequest.url?.absoluteString == "https://api.themoviedb.org/3/tv/456")
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
      (TVShowList.airingToday, "https://api.themoviedb.org/3/tv/airing_today"),
      (TVShowList.onTheAir, "https://api.themoviedb.org/3/tv/on_the_air"),
      (TVShowList.popular, "https://api.themoviedb.org/3/tv/popular"),
      (TVShowList.topRated, "https://api.themoviedb.org/3/tv/top_rated"),
      (TVShowList.similar(123), "https://api.themoviedb.org/3/tv/123/similar"),
      (TVShowList.trending(.day), "https://api.themoviedb.org/3/trending/tv/day"),
    ]
  )
  func tvShowsSuccess(list: TVShowList, absoluteURLString: String) async throws {
    // Setup
    let urlRequestStorage = TestStorage<URLRequest>()
    let data: Data
    switch list {
    case .airingToday:
      data = .airingTodayTVShows
    case .onTheAir:
      data = .onTheAirTVShows
    case .popular:
      data = .popularTVShows
    case .topRated:
      data = .topRatedTVShows
    case .similar:
      data = .similarTVShows
    case .trending:
      data = .trendingTVShows
    }
    // Test
    let client = TMDBClient(accessToken: "ABC123") {
      await urlRequestStorage.setValue($0)
      return Response(data: data, statusCode: 200)
    }
    await #expect(throws: Never.self) {
      try await client.tvShows(list: list)
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
  func tvShowsFailure() async throws {
    // Setup
    let urlRequestStorage = TestStorage<URLRequest>()
    // Test
    let client = TMDBClient(accessToken: "DEF456") {
      await urlRequestStorage.setValue($0)
      return Response(data: .tmdbError, statusCode: 400)
    }
    await #expect(throws: TMDBError.self) {
      try await client.tvShows(list: .trending(.week))
    }
    // Verify
    let urlRequest = try #require(await urlRequestStorage.value)
    #expect(urlRequest.url?.absoluteString == "https://api.themoviedb.org/3/trending/tv/week")
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
