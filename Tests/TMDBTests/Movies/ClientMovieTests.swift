import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif
import Testing
import TMDB

struct ClientMovieTests {
    @Test(
        arguments: [
            (MovieList.nowPlaying, "https://api.themoviedb.org/3/movie/now_playing"),
            (MovieList.popular, "https://api.themoviedb.org/3/movie/popular"),
            (MovieList.topRated, "https://api.themoviedb.org/3/movie/top_rated"),
            (MovieList.upcoming, "https://api.themoviedb.org/3/movie/upcoming"),
        ]
    )
    func moviesSuccess(list: MovieList, absoluteURLString: String) async throws {
        // Setup
        let urlRequestStorage = TestStorage<URLRequest>()
        // Test
        let client = Client(accessToken: "ABC123") {
            await urlRequestStorage.setValue($0)
            return Response(data: .moviePageContent, statusCode: 200)
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

    @Test(
        arguments: [
            (MovieList.nowPlaying, "https://api.themoviedb.org/3/movie/now_playing"),
            (MovieList.popular, "https://api.themoviedb.org/3/movie/popular"),
            (MovieList.topRated, "https://api.themoviedb.org/3/movie/top_rated"),
            (MovieList.upcoming, "https://api.themoviedb.org/3/movie/upcoming"),
        ]
    )
    func moviesFailureResponse(list: MovieList, absoluteURLString: String) async throws {
        // Setup
        let urlRequestStorage = TestStorage<URLRequest>()
        // Test
        let client = Client(accessToken: "DEF456") {
            await urlRequestStorage.setValue($0)
            return Response(data: .errorContent, statusCode: 400)
        }
        await #expect(throws: ErrorContent.self) {
            try await client.movies(list: list)
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
            (MovieList.nowPlaying, "https://api.themoviedb.org/3/movie/now_playing"),
            (MovieList.popular, "https://api.themoviedb.org/3/movie/popular"),
            (MovieList.topRated, "https://api.themoviedb.org/3/movie/top_rated"),
            (MovieList.upcoming, "https://api.themoviedb.org/3/movie/upcoming"),
        ]
    )
    func moviesFailureRequest(list: MovieList, absoluteURLString: String) async throws {
        // Setup
        struct TestError: Error {}
        let urlRequestStorage = TestStorage<URLRequest>()
        // Test
        let client = Client(accessToken: "GHI789") {
            await urlRequestStorage.setValue($0)
            throw TestError()
        }
        await #expect(throws: TestError.self) {
            try await client.movies(list: list)
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
