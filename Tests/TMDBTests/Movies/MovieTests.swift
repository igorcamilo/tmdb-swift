import Foundation
import TMDB
import Testing

struct MovieTests {
  @Test
  func decodeMovie1() async throws {
    // Setup
    let data = Data.movie1
    let decoder = JSONDecoder()
    // Test
    let movie = try decoder.decode(Movie.self, from: data)
    // Verify
    let expectedMovie = Movie(
      adult: false,
      backdropPath: nil,
      genreIDs: [],
      id: 1_524_520,
      originalLanguage: "cs",
      originalTitle: "Conversation 5, 6 & 8",
      overview: "",
      popularity: 0,
      posterPath: nil,
      releaseDate: "1985-01-01",
      title: "Conversation 5, 6 & 8",
      video: false,
      voteAverage: 0,
      voteCount: 0
    )
    #expect(movie == expectedMovie)
  }

  @Test
  func decodeMovie2() async throws {
    // Setup
    let data = Data.movie2
    let decoder = JSONDecoder()
    // Test
    let movie = try decoder.decode(Movie.self, from: data)
    // Verify
    let expectedMovie = Movie(
      adult: false,
      backdropPath: nil,
      genreIDs: nil,
      id: 1_524_521,
      originalLanguage: "nl",
      originalTitle: "Scrooge live  collectie",
      overview: "",
      popularity: nil,
      posterPath: "/jhautnzIZYPzNgNy8ZIQRGaZrun.jpg",
      releaseDate: nil,
      title: "Scrooge live  collectie",
      video: nil,
      voteAverage: nil,
      voteCount: nil
    )
    #expect(movie == expectedMovie)
  }
}
