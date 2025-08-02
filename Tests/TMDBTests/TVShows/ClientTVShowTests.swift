import Foundation
import TMDB
import Testing

#if canImport(FoundationNetworking)
  import FoundationNetworking
#endif

struct ClientTVShowTests {
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
    let client = Client(accessToken: "ABC123") {
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

  @Test(
    arguments: [
      (TVShowList.airingToday, "https://api.themoviedb.org/3/tv/airing_today"),
      (TVShowList.onTheAir, "https://api.themoviedb.org/3/tv/on_the_air"),
      (TVShowList.popular, "https://api.themoviedb.org/3/tv/popular"),
      (TVShowList.topRated, "https://api.themoviedb.org/3/tv/top_rated"),
      (TVShowList.similar(456), "https://api.themoviedb.org/3/tv/456/similar"),
      (TVShowList.trending(.week), "https://api.themoviedb.org/3/trending/tv/week"),
    ]
  )
  func tvShowsFailureResponse(list: TVShowList, absoluteURLString: String) async throws {
    // Setup
    let urlRequestStorage = TestStorage<URLRequest>()
    // Test
    let client = Client(accessToken: "DEF456") {
      await urlRequestStorage.setValue($0)
      return Response(data: .errorContent, statusCode: 400)
    }
    await #expect(throws: ErrorContent.self) {
      try await client.tvShows(list: list)
    }
    // Verify
    let urlRequest = try #require(await urlRequestStorage.value)
    #expect(urlRequest.url?.absoluteString == absoluteURLString)
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
      (TVShowList.similar(789), "https://api.themoviedb.org/3/tv/789/similar"),
      (TVShowList.trending(.day), "https://api.themoviedb.org/3/trending/tv/day"),
    ]
  )
  func tvShowsFailureRequest(list: TVShowList, absoluteURLString: String) async throws {
    // Setup
    struct TestError: Error {}
    let urlRequestStorage = TestStorage<URLRequest>()
    // Test
    let client = Client(accessToken: "GHI789") {
      await urlRequestStorage.setValue($0)
      throw TestError()
    }
    await #expect(throws: TestError.self) {
      try await client.tvShows(list: list)
    }
    // Verify
    let urlRequest = try #require(await urlRequestStorage.value)
    #expect(urlRequest.url?.absoluteString == absoluteURLString)
    #expect(urlRequest.httpMethod == "GET")
    #expect(urlRequest.httpBody == nil)
    #expect(
      urlRequest.allHTTPHeaderFields == [
        "Authorization": "Bearer GHI789",
        "Accept": "application/json",
      ]
    )
  }
}
