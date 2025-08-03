import Foundation
import TMDB
import Testing

struct TVShowDetailsTests {
  @Test
  func decodeTVShowDetails1() async throws {
    // Setup
    let data = Data.tvShowDetails1
    let decoder = JSONDecoder()
    // Test
    let tvShowDetails = try decoder.decode(TVShowDetails.self, from: data)
    // Verify
    let expectedTVShowDetails = TVShowDetails(
      adult: false,
      backdropPath: "/mXtL24G2Awyl3lKFtreMHnH5qFC.jpg",
      firstAirDate: "1998-06-06",
      genres: [
        Genre(id: 35, name: "Comedy"),
        Genre(id: 18, name: "Drama"),
      ],
      homepage: "http://www.hbo.com/sex-and-the-city",
      id: 105,
      inProduction: false,
      languages: ["en"],
      lastAirDate: "2004-02-22",
      name: "Sex and the City",
      numberOfEpisodes: 94,
      numberOfSeasons: 6,
      originCountry: ["US"],
      originalLanguage: "en",
      originalName: "Sex and the City",
      overview: #"""
        Based on the bestselling book by Candace Bushnell, Sex and the City tells the story of four best friends, all single and in their late thirties, as they pursue their careers and talk about their sex lives, all while trying to survive the New York social scene. 
        """#,
      popularity: 58.4986,
      posterPath: "/jfLp8gTfdi9d8onEFJ60kp1Bl1e.jpg",
      productionCompanies: [
        ProductionCompany(
          id: 1694,
          logoPath: nil,
          name: "Darren Star Productions",
          originCountry: "US"
        ),
        ProductionCompany(
          id: 3268,
          logoPath: "/tuomPhY2UtuPTqqFnKMVHvSb724.png",
          name: "HBO",
          originCountry: "US"
        ),
      ],
      productionCountries: [
        Country(iso31661: "US", name: "United States of America")
      ],
      spokenLanguages: [
        Language(englishName: "English", iso6391: "en", name: "English")
      ],
      status: "Ended",
      tagline: "The next best thing to being there.",
      type: "Scripted",
      voteAverage: 7.4,
      voteCount: 2068
    )
    #expect(tvShowDetails == expectedTVShowDetails)
  }

  @Test
  func decodeTVShowDetails2() async throws {
    // Setup
    let data = Data.tvShowDetails2
    let decoder = JSONDecoder()
    // Test
    let tvShowDetails = try decoder.decode(TVShowDetails.self, from: data)
    // Verify
    let expectedTVShowDetails = TVShowDetails(
      adult: false,
      backdropPath: nil,
      firstAirDate: "",
      genres: [],
      homepage: "",
      id: 297377,
      inProduction: true,
      languages: [],
      lastAirDate: nil,
      name: "仙台有树（重剪版）",
      numberOfEpisodes: nil,
      numberOfSeasons: 0,
      originCountry: ["CN"],
      originalLanguage: "zh",
      originalName: "仙台有树（重剪版）",
      overview: "",
      popularity: 0,
      posterPath: nil,
      productionCompanies: [],
      productionCountries: [],
      spokenLanguages: [],
      status: "Returning Series",
      tagline: "",
      type: "Scripted",
      voteAverage: 0,
      voteCount: 0
    )
    #expect(tvShowDetails == expectedTVShowDetails)
  }
}
