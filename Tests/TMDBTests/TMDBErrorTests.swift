import Foundation
import TMDB
import Testing

struct TMDBErrorTests {
  @Test
  func decodeTMDBError() async throws {
    // Setup
    let data = Data.tmdbError
    let decoder = JSONDecoder()
    // Test
    let error = try decoder.decode(TMDBError.self, from: data)
    // Verify
    let expectedError = TMDBError(
      statusCode: 7,
      statusMessage: "Invalid API key: You must be granted a valid key.",
      success: false
    )
    #expect(error == expectedError)
  }
}
