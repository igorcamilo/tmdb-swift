import Foundation
import TMDB
import Testing

struct TVShowDetailsTests {
  @Test
  func decodeCompleteData() async throws {
    // Setup
    let data = Data.tvShowDetailsComplete
    let decoder = JSONDecoder()
    // Test
    let tvShowDetails = try decoder.decode(TVShowDetails.self, from: data)
    // Verify
    #expect(tvShowDetails.adult == false)
    #expect(tvShowDetails.backdropPath == "/mXtL24G2Awyl3lKFtreMHnH5qFC.jpg")
    #expect(tvShowDetails.firstAirDate == "1998-06-06")
    #expect(tvShowDetails.genres.count == 2)
    #expect(tvShowDetails.homepage == "http://www.hbo.com/sex-and-the-city")
    #expect(tvShowDetails.id == 105)
    #expect(tvShowDetails.inProduction == false)
    #expect(tvShowDetails.languages.count == 1)
    #expect(tvShowDetails.lastAirDate == "2004-02-22")
    #expect(tvShowDetails.name == "Sex and the City")
    #expect(tvShowDetails.numberOfEpisodes == 94)
    #expect(tvShowDetails.numberOfSeasons == 6)
    #expect(tvShowDetails.originCountry.count == 1)
    #expect(tvShowDetails.originalLanguage == "en")
    #expect(tvShowDetails.originalName == "Sex and the City")
    #expect(tvShowDetails.overview.isEmpty == false)
    #expect(tvShowDetails.popularity == 51.1913)
    #expect(tvShowDetails.posterPath == "/jfLp8gTfdi9d8onEFJ60kp1Bl1e.jpg")
    #expect(tvShowDetails.productionCompanies.count == 2)
    #expect(tvShowDetails.productionCountries.count == 1)
    #expect(tvShowDetails.spokenLanguages.count == 1)
    #expect(tvShowDetails.status == "Ended")
    #expect(tvShowDetails.tagline == "The next best thing to being there.")
    #expect(tvShowDetails.type == "Scripted")
    #expect(tvShowDetails.voteAverage == 7.387)
    #expect(tvShowDetails.voteCount == 2070)
    #expect(tvShowDetails.keywords?.results.count == 8)
    #expect(tvShowDetails.similar?.results.count == 20)
  }

  @Test
  func decodeMinimalData() async throws {
    // Setup
    let data = Data.tvShowDetailsMinimal
    let decoder = JSONDecoder()
    // Test
    let tvShowDetails = try decoder.decode(TVShowDetails.self, from: data)
    // Verify
    #expect(tvShowDetails.adult == false)
    #expect(tvShowDetails.backdropPath == nil)
    #expect(tvShowDetails.firstAirDate == "")
    #expect(tvShowDetails.genres.count == 0)
    #expect(tvShowDetails.homepage == "")
    #expect(tvShowDetails.id == 297377)
    #expect(tvShowDetails.inProduction == true)
    #expect(tvShowDetails.languages.count == 0)
    #expect(tvShowDetails.lastAirDate == nil)
    #expect(tvShowDetails.name == "仙台有树（重剪版）")
    #expect(tvShowDetails.numberOfEpisodes == nil)
    #expect(tvShowDetails.numberOfSeasons == 0)
    #expect(tvShowDetails.originCountry.count == 1)
    #expect(tvShowDetails.originalLanguage == "zh")
    #expect(tvShowDetails.originalName == "仙台有树（重剪版）")
    #expect(tvShowDetails.overview.isEmpty == true)
    #expect(tvShowDetails.popularity == 0)
    #expect(tvShowDetails.posterPath == nil)
    #expect(tvShowDetails.productionCompanies.count == 0)
    #expect(tvShowDetails.productionCountries.count == 0)
    #expect(tvShowDetails.spokenLanguages.count == 0)
    #expect(tvShowDetails.status == "Returning Series")
    #expect(tvShowDetails.tagline == "")
    #expect(tvShowDetails.type == "Scripted")
    #expect(tvShowDetails.voteAverage == 0)
    #expect(tvShowDetails.voteCount == 0)
    #expect(tvShowDetails.keywords == nil)
    #expect(tvShowDetails.similar == nil)
  }
}
