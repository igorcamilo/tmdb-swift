import Foundation
import TMDB
import Testing

struct MovieDetailsTests {
  @Test
  func decodeMovieDetails1() async throws {
    // Setup
    let data = Data.movieDetails1
    let decoder = JSONDecoder()
    // Test
    let movieDetails = try decoder.decode(MovieDetails.self, from: data)
    // Verify
    let expectedMovieDetails = MovieDetails(
      adult: false,
      backdropPath: "/1RAxtBxslR4OZCZC1vxIRUxjR7a.jpg",
      belongsToCollection: MovieCollection(
        id: 86860,
        name: "Scooby-Doo Collection",
        posterPath: "/GoZ2F80wVsnvdXtwtWY5HPnxYG.jpg",
        backdropPath: "/crBcWcmfSwM1FaFr7s3dOyzSF9m.jpg"
      ),
      budget: 84_000_000,
      genres: [
        Genre(id: 9648, name: "Mystery"),
        Genre(id: 12, name: "Adventure"),
        Genre(id: 35, name: "Comedy"),
      ],
      homepage: "https://www.warnerbros.com/movies/scooby-doo-movie",
      id: 9637,
      imdbID: "tt0267913",
      originCountry: ["US"],
      originalLanguage: "en",
      originalTitle: "Scooby-Doo",
      overview: #"""
        When the Mystery Inc. gang is invited to Spooky Island, a popular amusement park, they soon discover that the attractions aren't the only things that are spooky. Strange things are happening, and it's up to Scooby, Shaggy, Fred, Daphne, and Velma to uncover the truth behind the mysterious happenings.
        """#,
      popularity: 6.0804,
      posterPath: "/mTAiBJGg8mqEfnYHHbi37ZoRSZm.jpg",
      productionCompanies: [
        ProductionCompany(
          id: 748,
          logoPath: nil,
          name: "Mosaic Media Group",
          originCountry: "US"
        ),
        ProductionCompany(
          id: 174,
          logoPath: "/kgJaIcKZZK4lTazer55XrgWDEvp.png",
          name: "Warner Bros. Pictures",
          originCountry: "US"
        ),
      ],
      productionCountries: [Country(iso31661: "US", name: "United States of America")],
      releaseDate: "2002-06-14",
      revenue: 275_650_703,
      runtime: 87,
      spokenLanguages: [
        Language(
          englishName: "English",
          iso6391: "en",
          name: "English"
        )
      ],
      status: "Released",
      tagline: "Be afraid. Be kind of afraid.",
      title: "Scooby-Doo",
      video: false,
      voteAverage: 6.1,
      voteCount: 4561,
      similar: nil
    )
    #expect(movieDetails == expectedMovieDetails)
  }

  @Test
  func decodeMovieDetails2() async throws {
    // Setup
    let data = Data.movieDetails2
    let decoder = JSONDecoder()
    // Test
    let movieDetails = try decoder.decode(MovieDetails.self, from: data)
    // Verify
    let expectedMovieDetails = MovieDetails(
      adult: false,
      backdropPath: nil,
      belongsToCollection: nil,
      budget: 0,
      genres: [],
      homepage: "",
      id: 1_524_528,
      imdbID: nil,
      originCountry: ["NL"],
      originalLanguage: "nl",
      originalTitle: "Home alone collection",
      overview: "",
      popularity: 0,
      posterPath: nil,
      productionCompanies: [],
      productionCountries: [],
      releaseDate: "",
      revenue: 0,
      runtime: 0,
      spokenLanguages: [],
      status: "Released",
      tagline: "",
      title: "Home alone collection",
      video: false,
      voteAverage: 0,
      voteCount: 0,
      similar: nil
    )
    #expect(movieDetails == expectedMovieDetails)
  }

  @Test
  func decodeMovieDetails3() async throws {
    // Setup
    let data = Data.movieDetails3
    let decoder = JSONDecoder()
    // Test
    let movieDetails = try decoder.decode(MovieDetails.self, from: data)
    // Verify
    #expect(movieDetails.similar?.results.count == 20)
  }
}
