import Foundation
import TMDB
import Testing

struct MovieDetailsTests {
  @Test
  func decodeCompleteData() async throws {
    // Setup
    let data = Data.movieDetailsComplete
    let decoder = JSONDecoder()
    // Test
    let movieDetails = try decoder.decode(MovieDetails.self, from: data)
    // Verify
    #expect(movieDetails.adult == false)
    #expect(movieDetails.backdropPath == "/1RAxtBxslR4OZCZC1vxIRUxjR7a.jpg")
    #expect(movieDetails.belongsToCollection != nil)
    #expect(movieDetails.budget == 84_000_000)
    #expect(movieDetails.genres.count == 3)
    #expect(movieDetails.homepage == "https://www.warnerbros.com/movies/scooby-doo-movie")
    #expect(movieDetails.id == 9637)
    #expect(movieDetails.imdbID == "tt0267913")
    #expect(movieDetails.originCountry?.count == 1)
    #expect(movieDetails.originalLanguage == "en")
    #expect(movieDetails.originalTitle == "Scooby-Doo")
    #expect(movieDetails.overview.isEmpty == false)
    #expect(movieDetails.popularity == 6.5838)
    #expect(movieDetails.posterPath == "/mTAiBJGg8mqEfnYHHbi37ZoRSZm.jpg")
    #expect(movieDetails.productionCompanies.count == 2)
    #expect(movieDetails.productionCountries.count == 1)
    #expect(movieDetails.releaseDate == "2002-06-14")
    #expect(movieDetails.revenue == 275_650_703)
    #expect(movieDetails.runtime == 87)
    #expect(movieDetails.spokenLanguages.count == 1)
    #expect(movieDetails.status == "Released")
    #expect(movieDetails.tagline == "Be afraid. Be kind of afraid.")
    #expect(movieDetails.title == "Scooby-Doo")
    #expect(movieDetails.video == false)
    #expect(movieDetails.voteAverage == 6.092)
    #expect(movieDetails.voteCount == 4562)
    #expect(movieDetails.keywords?.keywords.count == 10)
    #expect(movieDetails.similar?.results.count == 20)
  }

  @Test
  func decodeMinimalData() async throws {
    // Setup
    let data = Data.movieDetailsMinimal
    let decoder = JSONDecoder()
    // Test
    let movieDetails = try decoder.decode(MovieDetails.self, from: data)
    // Verify
    #expect(movieDetails.adult == false)
    #expect(movieDetails.backdropPath == nil)
    #expect(movieDetails.belongsToCollection == nil)
    #expect(movieDetails.budget == 0)
    #expect(movieDetails.genres.count == 0)
    #expect(movieDetails.homepage == "")
    #expect(movieDetails.id == 1524528)
    #expect(movieDetails.imdbID == nil)
    #expect(movieDetails.originCountry?.count == 1)
    #expect(movieDetails.originalLanguage == "nl")
    #expect(movieDetails.originalTitle == "Home alone collection")
    #expect(movieDetails.overview.isEmpty)
    #expect(movieDetails.popularity == 0)
    #expect(movieDetails.posterPath == nil)
    #expect(movieDetails.productionCompanies.count == 0)
    #expect(movieDetails.productionCountries.count == 0)
    #expect(movieDetails.releaseDate == "")
    #expect(movieDetails.revenue == 0)
    #expect(movieDetails.runtime == 0)
    #expect(movieDetails.spokenLanguages.count == 0)
    #expect(movieDetails.status == "Released")
    #expect(movieDetails.tagline == "")
    #expect(movieDetails.title == "Home alone collection")
    #expect(movieDetails.video == false)
    #expect(movieDetails.voteAverage == 0)
    #expect(movieDetails.voteCount == 0)
    #expect(movieDetails.keywords == nil)
    #expect(movieDetails.similar == nil)
  }
}
