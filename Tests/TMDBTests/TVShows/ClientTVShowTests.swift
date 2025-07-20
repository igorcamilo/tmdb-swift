import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif
import Testing
import TMDB

struct ClientTVShowTests {
    @Test(
        arguments: [
            (TVShowList.airingToday, "https://api.themoviedb.org/3/tv/airing_today"),
            (TVShowList.onTheAir, "https://api.themoviedb.org/3/tv/on_the_air"),
            (TVShowList.popular, "https://api.themoviedb.org/3/tv/popular"),
            (TVShowList.topRated, "https://api.themoviedb.org/3/tv/top_rated"),
        ]
    )
    func tvShowsSuccess(list: TVShowList, absoluteURLString: String) async throws {
        // Setup
        let urlRequestStorage = TestStorage<URLRequest>()
        // Test
        let client = Client(accessToken: "ABC123") {
            await urlRequestStorage.setValue($0)
            return Response(data: .tvShowPageContent, statusCode: 200)
        }
        await #expect(throws: Never.self) {
            try await client.tvShows(list: list)
        }
        // Verify
        let urlRquest = try #require(await urlRequestStorage.value)
        #expect(urlRquest.url?.absoluteString == absoluteURLString)
        #expect(urlRquest.httpMethod == "GET")
        #expect(urlRquest.httpBody == nil)
        #expect(
            urlRquest.allHTTPHeaderFields == [
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
        let urlRquest = try #require(await urlRequestStorage.value)
        #expect(urlRquest.url?.absoluteString == absoluteURLString)
        #expect(urlRquest.httpMethod == "GET")
        #expect(urlRquest.httpBody == nil)
        #expect(
            urlRquest.allHTTPHeaderFields == [
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
        let urlRquest = try #require(await urlRequestStorage.value)
        #expect(urlRquest.url?.absoluteString == absoluteURLString)
        #expect(urlRquest.httpMethod == "GET")
        #expect(urlRquest.httpBody == nil)
        #expect(
            urlRquest.allHTTPHeaderFields == [
                "Authorization": "Bearer GHI789",
                "Accept": "application/json",
            ]
        )
    }
}
