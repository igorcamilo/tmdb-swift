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
            (100.0, "w122"),
            (122.001, "w123"),
            (123.0, "w123"),
            (123.999, "w124"),
            (124.0, "w124"),
            (800.0, "xyz"),
            (1000.0, "xyz"),
        ]
    )
    func imageSize(width: CGFloat?, rawSize: String?) async throws {
        // Setup
        let rawSizes = ["abc", "w122", "h123", "w123", "w124", "xyz"]
        let images = try Configuration.Images(
            baseURL: #require(URL(string: "https://kinova.co/")),
            secureBaseURL: #require(URL(string: "https://kinova.co/")),
            backdropSizes: [],
            logoSizes: [],
            posterSizes: rawSizes.map(Configuration.Images.PosterSize.init),
            profileSizes: [],
            stillSizes: []
        )
        // Test
        let size = images.size(width: width, from: \.posterSizes)
        // Verify
        #expect(size?.rawValue == rawSize)
    }

    @Test(
        arguments: [
            ("w122", "/123.jpg", "https://kinova.co/w122/123.jpg"),
            ("w123", "/123.jpg", "https://kinova.co/w123/123.jpg"),
            ("w124", "/123.jpg", "https://kinova.co/w124/123.jpg"),
            ("xyz", "/123.jpg", "https://kinova.co/xyz/123.jpg"),
            ("w124", nil, nil),
            ("xyz", nil, nil),
        ]
    )
    func imageURL(rawSize: String, rawPath: String?, expectedURL: String?) async throws {
        // Setup
        let images = try Configuration.Images(
            baseURL: #require(URL(string: "https://kinova.co/")),
            secureBaseURL: #require(URL(string: "https://kinova.co/")),
            backdropSizes: [],
            logoSizes: [],
            posterSizes: [],
            profileSizes: [],
            stillSizes: []
        )
        // Test
        let url = images.url(
            size: Configuration.Images.PosterSize(rawValue: rawSize),
            path: rawPath.map(PosterPath.init)
        )
        // Verify
        #expect(url?.absoluteString == expectedURL)
    }
}
