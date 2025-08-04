import Foundation
import TMDB
import Testing

struct PageTests {
  @Test
  func decodeMoviePage() async throws {
    // Setup
    let data = Data.page
    let decoder = JSONDecoder()
    // Test
    let page = try decoder.decode(Page<Movie>.self, from: data)
    // Verify
    let expectedPage = Page<Movie>(
      page: 1,
      results: [],
      totalPages: 11,
      totalResults: 206
    )
    #expect(page == expectedPage)
  }

  @Test
  func decodeTVShowPage() async throws {
    // Setup
    let data = Data.page
    let decoder = JSONDecoder()
    // Test
    let page = try decoder.decode(Page<TVShow>.self, from: data)
    // Verify
    let expectedPage = Page<TVShow>(
      page: 1,
      results: [],
      totalPages: 11,
      totalResults: 206
    )
    #expect(page == expectedPage)
  }
}
