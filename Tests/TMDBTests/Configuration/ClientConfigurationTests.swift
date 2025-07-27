import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif
import Testing
import TMDB

struct ClientConfigurationTests {
    @Test
    func configurationSuccess() async throws {
        // Setup
        let urlRequestStorage = TestStorage<URLRequest>()
        // Test
        let client = Client(accessToken: "ABC123") {
            await urlRequestStorage.setValue($0)
            return Response(data: .configuration, statusCode: 200)
        }
        await #expect(throws: Never.self) {
            try await client.configuration()
        }
        // Verify
        let urlRequest = try #require(await urlRequestStorage.value)
        #expect(urlRequest.url?.absoluteString == "https://api.themoviedb.org/3/configuration")
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
    func configurationFailureResponse() async throws {
        // Setup
        let urlRequestStorage = TestStorage<URLRequest>()
        // Test
        let client = Client(accessToken: "DEF456") {
            await urlRequestStorage.setValue($0)
            return Response(data: .errorContent, statusCode: 400)
        }
        await #expect(throws: ErrorContent.self) {
            try await client.configuration()
        }
        // Verify
        let urlRequest = try #require(await urlRequestStorage.value)
        #expect(urlRequest.url?.absoluteString == "https://api.themoviedb.org/3/configuration")
        #expect(urlRequest.httpMethod == "GET")
        #expect(urlRequest.httpBody == nil)
        #expect(
            urlRequest.allHTTPHeaderFields == [
                "Authorization": "Bearer DEF456",
                "Accept": "application/json",
            ]
        )
    }

    @Test
    func configurationFailureRequest() async throws {
        // Setup
        struct TestError: Error {}
        let urlRequestStorage = TestStorage<URLRequest>()
        // Test
        let client = Client(accessToken: "GHI789") {
            await urlRequestStorage.setValue($0)
            throw TestError()
        }
        await #expect(throws: TestError.self) {
            try await client.configuration()
        }
        // Verify
        let urlRequest = try #require(await urlRequestStorage.value)
        #expect(urlRequest.url?.absoluteString == "https://api.themoviedb.org/3/configuration")
        #expect(urlRequest.httpMethod == "GET")
        #expect(urlRequest.httpBody == nil)
        #expect(
            urlRequest.allHTTPHeaderFields == [
                "Authorization": "Bearer GHI789",
                "Accept": "application/json",
            ]
        )
    }

    @Test(
        arguments: [
            (CGFloat(123), PosterPath(rawValue: "/123"), "https://kinova.co/w123/123"),
            (nil, PosterPath(rawValue: "/123"), "https://kinova.co/xyz/123"),
            (CGFloat(123), nil, nil),
            (nil, nil, nil),
            (CGFloat(456), PosterPath(rawValue: "/456"), "https://kinova.co/w500/456"),
            (nil, PosterPath(rawValue: "/456"), "https://kinova.co/xyz/456"),
            (CGFloat(456), nil, nil),
        ]
    )
    func imagesPosterURL(targetWidth: CGFloat?, path: PosterPath?, result: String?) async throws {
        // Setup
        let images = try Configuration.Images(
            baseURL: #require(URL(string: "https://kinova.co/")),
            secureBaseURL: #require(URL(string: "https://kinova.co/")),
            backdropSizes: [],
            logoSizes: [],
            posterSizes: ["abc", "w122", "h123", "w123", "w124", "w500", "w780", "xyz"],
            profileSizes: [],
            stillSizes: []
        )
        // Test
        let url = images.posterURL(targetWidth: targetWidth, path: path)
        // Verify
        #expect(url?.absoluteString == result)
    }
}
