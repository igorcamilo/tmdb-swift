import Foundation
import TMDB
import Testing

#if canImport(FoundationNetworking)
  import FoundationNetworking
#endif

struct TMDBClientConfigurationTests {
  @Test
  func configurationSuccess() async throws {
    // Setup
    let urlRequestStorage = TestStorage<URLRequest>()
    // Test
    let client = TMDBClient(accessToken: "ABC123") {
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
    let client = TMDBClient(accessToken: "DEF456") {
      await urlRequestStorage.setValue($0)
      return Response(data: .tmdbError, statusCode: 400)
    }
    await #expect(throws: TMDBError.self) {
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
    let client = TMDBClient(accessToken: "GHI789") {
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
}
