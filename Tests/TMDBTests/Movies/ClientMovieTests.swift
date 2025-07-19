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
}
