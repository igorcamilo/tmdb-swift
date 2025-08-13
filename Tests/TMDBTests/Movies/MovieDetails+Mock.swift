//
//  MovieDetails+Mock.swift
//  TMDB
//
//  Created by Igor Camilo on 13.08.25.
//

import TMDB

extension MovieDetails {
  public static let mock: MovieDetails = {
    var mock = MovieDetails(id: 9637)
    mock.adult = false
    mock.backdropPath = "/1RAxtBxslR4OZCZC1vxIRUxjR7a.jpg"
    mock.belongsToCollection = MovieCollection(
      id: 86860,
      name: "Scooby-Doo Collection",
      posterPath: "/GoZ2F80wVsnvdXtwtWY5HPnxYG.jpg",
      backdropPath: "/crBcWcmfSwM1FaFr7s3dOyzSF9m.jpg"
    )
    mock.budget = 84_000_000
    mock.genres = [
      Genre(id: 9648, name: "Mystery"),
      Genre(id: 12, name: "Adventure"),
      Genre(id: 35, name: "Comedy"),
    ]
    mock.homepage = "https://www.warnerbros.com/movies/scooby-doo-movie"
    mock.imdbID = "tt0267913"
    mock.originCountry = ["US"]
    mock.originalLanguage = "en"
    mock.originalTitle = "Scooby-Doo"
    mock.overview =
      "When the Mystery Inc. gang is invited to Spooky Island, a popular amusement park, they soon discover that the attractions aren't the only things that are spooky. Strange things are happening, and it's up to Scooby, Shaggy, Fred, Daphne, and Velma to uncover the truth behind the mysterious happenings."
    mock.popularity = 6.5838
    mock.posterPath = "/mTAiBJGg8mqEfnYHHbi37ZoRSZm.jpg"
    mock.productionCompanies = [
      ProductionCompany(id: 748, logoPath: nil, name: "Mosaic Media Group", originCountry: "US"),
      ProductionCompany(
        id: 174, logoPath: "/kgJaIcKZZK4lTazer55XrgWDEvp.png", name: "Warner Bros. Pictures",
        originCountry: "US"),
    ]
    mock.productionCountries = [
      Country(iso31661: "US", name: "United States of America")
    ]
    mock.releaseDate = "2002-06-14"
    mock.revenue = 275_650_703
    mock.runtime = 87
    mock.spokenLanguages = [
      Language(englishName: "English", iso6391: "en", name: "English")
    ]
    mock.status = "Released"
    mock.tagline = "Be afraid. Be kind of afraid."
    mock.title = "Scooby-Doo"
    mock.video = false
    mock.voteAverage = 6.092
    mock.voteCount = 4562
    mock.keywords = Keywords(
      keywords: [
        Keyword(id: 3392, name: "voodoo"),
        Keyword(id: 703, name: "detective"),
        Keyword(id: 11478, name: "talking dog"),
        Keyword(id: 10244, name: "based on cartoon"),
        Keyword(id: 10793, name: "resort"),
        Keyword(id: 157241, name: "criminal investigation"),
        Keyword(id: 158340, name: "theme park"),
        Keyword(id: 164246, name: "nostalgic"),
        Keyword(id: 179431, name: "duringcreditsstinger"),
        Keyword(id: 209220, name: "live action and animation"),
      ]
    )
    mock.similar = Page<Movie>(
      page: 1,
      results: [
        {
          var movie = Movie(id: 539)
          movie.adult = false
          movie.backdropPath = "/uif5fUshJrXyyDzfpzp1DLw3N0S.jpg"
          movie.genreIDs = [27, 53, 9648]
          movie.originalLanguage = "en"
          movie.originalTitle = "Psycho"
          movie.overview =
            "When larcenous real estate clerk Marion Crane goes on the lam with a wad of cash and hopes of starting a new life, she ends up at the notorious Bates Motel, where manager Norman Bates cares for his housebound mother."
          movie.popularity = 9.4094
          movie.posterPath = "/yz4QVqPx3h1hD1DfqqQkCq3rmxW.jpg"
          movie.releaseDate = "1960-06-22"
          movie.title = "Psycho"
          movie.video = false
          movie.voteAverage = 8.421
          movie.voteCount = 10450
          return movie
        }(),
        {
          var movie = Movie(id: 585)
          movie.adult = false
          movie.backdropPath = "/c7VbRPlev1bRfKvTxr98erw5T7B.jpg"
          movie.genreIDs = [16, 35, 10751]
          movie.originalLanguage = "en"
          movie.originalTitle = "Monsters, Inc."
          movie.overview =
            "Lovable Sulley and his wisecracking sidekick Mike Wazowski are the top scare team at Monsters, Inc., the scream-processing factory in Monstropolis. When a little girl named Boo wanders into their world, it's the monsters who are scared silly, and it's up to Sulley and Mike to keep her out of sight and get her back home."
          movie.popularity = 16.9668
          movie.posterPath = "/wFSpyMsp7H0ttERbxY7Trlv8xry.jpg"
          movie.releaseDate = "2001-11-01"
          movie.title = "Monsters, Inc."
          movie.video = false
          movie.voteAverage = 7.845
          movie.voteCount = 19001
          return movie
        }(),
        {
          var movie = Movie(id: 617)
          movie.adult = false
          movie.backdropPath = "/qVKhr3WcbSQKJmVJhKq9ov3iwcT.jpg"
          movie.genreIDs = [9648, 53, 18]
          movie.originalLanguage = "en"
          movie.originalTitle = "Wild Things"
          movie.overview =
            "When teen-socialite Kelly Van Ryan and troubled bad girl Suzie Toller accuse guidance counselor Sam Lombardo of rape, he's suspended by the school, rejected by the town, and fighting to get his life back. One cop suspects conspiracy, but nothing is what it seems..."
          movie.popularity = 3.4378
          movie.posterPath = "/wrcTDD9T7Ga5c9MW7kaOo2qwIvW.jpg"
          movie.releaseDate = "1998-03-20"
          movie.title = "Wild Things"
          movie.video = false
          movie.voteAverage = 6.358
          movie.voteCount = 1829
          return movie
        }(),
        {
          var movie = Movie(id: 620)
          movie.adult = false
          movie.backdropPath = "/c6yfABGVKuB5cjoOwdX4AJMlzUz.jpg"
          movie.genreIDs = [35, 14]
          movie.originalLanguage = "en"
          movie.originalTitle = "Ghostbusters"
          movie.overview =
            "After losing their academic posts at a prestigious university, a team of parapsychologists goes into business as proton-pack-toting \"ghostbusters\" who exterminate ghouls, hobgoblins and supernatural pests of all stripes. An ad campaign pays off when a knockout cellist hires the squad to purge her swanky digs of demons that appear to be living in her refrigerator."
          movie.popularity = 7.5124
          movie.posterPath = "/7E8nLijS9AwwUEPu2oFYOVKhdFA.jpg"
          movie.releaseDate = "1984-06-08"
          movie.title = "Ghostbusters"
          movie.video = false
          movie.voteAverage = 7.494
          movie.voteCount = 9301
          return movie
        }(),
        {
          var movie = Movie(id: 634)
          movie.adult = false
          movie.backdropPath = "/imvV078HyWsa9jgDVLi4APgskrJ.jpg"
          movie.genreIDs = [35, 10749, 18]
          movie.originalLanguage = "en"
          movie.originalTitle = "Bridget Jones's Diary"
          movie.overview =
            "Bridget Jones is an average woman struggling against her age, her weight, her job, her lack of a man, and her various imperfections. As a New Year's resolution, Bridget decides to take control of her life, starting by keeping a diary in which she will always tell the complete truth. The fireworks begin when her charming though disreputable boss takes an interest in the quirky Miss Jones. Thrown into the mix are Bridget's band of slightly eccentric friends and a rather disagreeable acquaintance into whom Bridget cannot seem to stop running or help finding quietly attractive."
          movie.popularity = 4.0946
          movie.posterPath = "/dkauRl9TosBFikftrC3OVcKWDoz.jpg"
          movie.releaseDate = "2001-04-13"
          movie.title = "Bridget Jones's Diary"
          movie.video = false
          movie.voteAverage = 6.747
          movie.voteCount = 5261
          return movie
        }(),
      ],
      totalPages: 10052,
      totalResults: 201033
    )
    return mock
  }()
}
