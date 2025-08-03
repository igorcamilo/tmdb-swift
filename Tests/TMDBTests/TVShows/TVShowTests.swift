import Foundation
import TMDB
import Testing

struct TVShowTests {
  @Test
  func decodeTVShow1() async throws {
    // Setup
    let data = Data.tvShow1
    let decoder = JSONDecoder()
    // Test
    let tvShow = try decoder.decode(TVShow.self, from: data)
    // Verify
    let expectedTVShow = TVShow(
      adult: false,
      backdropPath: "/5BlPu7u7fRKNkNf3b3JPCpt249L.jpg",
      genreIDs: [],
      id: 297359,
      originCountry: ["JP"],
      originalLanguage: "en",
      originalName: "J-Trip Plan",
      overview: #"""
        This travel show aimed at overseas visitors offers info on where to go, what to see, and how to experience Japan, like an expert.
        """#,
      popularity: 0.0,
      posterPath: "/qcDBu6cKO1rAphFDKwTWcPDwgdm.jpg",
      firstAirDate: "2016-04-04",
      name: "J-Trip Plan",
      voteAverage: 0.0,
      voteCount: 0
    )
    #expect(tvShow == expectedTVShow)
  }

  @Test
  func decodeTVShow2() async throws {
    // Setup
    let data = Data.tvShow2
    let decoder = JSONDecoder()
    // Test
    let tvShow = try decoder.decode(TVShow.self, from: data)
    // Verify
    let expectedTVShow = TVShow(
      adult: false,
      backdropPath: "/umpv38zP1GMNU9TTJUH6HZP4jby.jpg",
      genreIDs: [10764],
      id: 297366,
      originCountry: ["SE"],
      originalLanguage: "sv",
      originalName: "Gift med fotbollen",
      overview: "",
      popularity: 0.0,
      posterPath: "/saHo4p3JFNH38VdPIXXJD2cojkZ.jpg",
      firstAirDate: "2025-07-21",
      name: "Gift med fotbollen",
      voteAverage: 0.0,
      voteCount: 0
    )
    #expect(tvShow == expectedTVShow)
  }
}
