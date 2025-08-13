//
//  TVShowDetails+Mock.swift
//  TMDB
//
//  Created by Igor Camilo on 13.08.25.
//

import TMDB

extension TVShowDetails {
  public static let mock: TVShowDetails = {
    var mock = TVShowDetails(id: 105)
    mock.adult = false
    mock.backdropPath = "/mXtL24G2Awyl3lKFtreMHnH5qFC.jpg"
    mock.firstAirDate = "1998-06-06"
    mock.genres = [
      Genre(id: 35, name: "Comedy"),
      Genre(id: 18, name: "Drama"),
    ]
    mock.homepage = "http://www.hbo.com/sex-and-the-city"
    mock.languages = ["en"]
    mock.lastAirDate = "2004-02-22"
    mock.name = "Sex and the City"
    mock.numberOfEpisodes = 94
    mock.numberOfSeasons = 6
    mock.originCountry = ["US"]
    mock.originalLanguage = "en"
    mock.originalName = "Sex and the City"
    mock.overview =
      "Based on the bestselling book by Candace Bushnell, Sex and the City tells the story of four best friends, all single and in their late thirties, as they pursue their careers and talk about their sex lives, all while trying to survive the New York social scene. "
    mock.popularity = 51.1913
    mock.posterPath = "/jfLp8gTfdi9d8onEFJ60kp1Bl1e.jpg"
    mock.productionCompanies = [
      ProductionCompany(
        id: 1694, logoPath: nil, name: "Darren Star Productions", originCountry: "US"),
      ProductionCompany(
        id: 3268, logoPath: "/tuomPhY2UtuPTqqFnKMVHvSb724.png", name: "HBO", originCountry: "US"),
    ]
    mock.productionCountries = [
      Country(iso31661: "US", name: "United States of America")
    ]
    mock.spokenLanguages = [
      Language(englishName: "English", iso6391: "en", name: "English")
    ]
    mock.status = "Ended"
    mock.tagline = "The next best thing to being there."
    mock.type = "Scripted"
    mock.voteAverage = 7.387
    mock.voteCount = 2070
    mock.keywords = Keywords(
      results: [
        Keyword(id: 242, name: "new york city"),
        Keyword(id: 3258, name: "beauty"),
        Keyword(id: 5248, name: "female friendship"),
        Keyword(id: 9673, name: "love"),
        Keyword(id: 13043, name: "dating"),
        Keyword(id: 163098, name: "newspaper reporter"),
        Keyword(id: 168346, name: "manhattan, new york city"),
        Keyword(id: 193171, name: "sitcom"),
      ]
    )
    mock.similar = Page<TVShow>(
      page: 1,
      results: [
        {
          var tvShow = TVShow(id: 4263)
          tvShow.adult = false
          tvShow.backdropPath = nil
          tvShow.genreIDs = [35]
          tvShow.originCountry = ["US"]
          tvShow.originalLanguage = "en"
          tvShow.originalName = "The New Dick Van Dyke Show"
          tvShow.overview =
            "The New Dick Van Dyke Show is an American sitcom starring Dick Van Dyke that aired on CBS from 1971 to 1974. It was Van Dyke\'s first return to series television since The Dick Van Dyke Show."
          tvShow.popularity = 12.0966
          tvShow.posterPath = "/enC1neRtm1mGHnQtMIAvwhCnKO0.jpg"
          tvShow.firstAirDate = "1971-09-18"
          tvShow.name = "The New Dick Van Dyke Show"
          tvShow.voteAverage = 4.0
          tvShow.voteCount = 3
          return tvShow
        }(),
        {
          var tvShow = TVShow(id: 4277)
          tvShow.adult = false
          tvShow.backdropPath = "/azDlPDaWs0d7yxVA4Kr3ka8l2kE.jpg"
          tvShow.genreIDs = [35]
          tvShow.originCountry = ["US"]
          tvShow.originalLanguage = "en"
          tvShow.originalName = "Archie Bunker\'s Place"
          tvShow.overview =
            "Archie Bunker\'s Place is an American sitcom originally broadcast on the CBS network, conceived in 1979 as a spin-off and continuation of All in the Family. While not as popular as its predecessor, the show maintained a large enough audience to last for four seasons, until its cancellation in 1983. In its first season, the show performed so well that it knocked Mork & Mindy out of its new Sunday night time slot."
          tvShow.popularity = 22.9298
          tvShow.posterPath = "/kjNp6j9XIfUtNrIJWOC9uzfvZN4.jpg"
          tvShow.firstAirDate = "1979-09-23"
          tvShow.name = "Archie Bunker\'s Place"
          tvShow.voteAverage = 6.5
          tvShow.voteCount = 20
          return tvShow
        }(),
        {
          var tvShow = TVShow(id: 4292)
          tvShow.adult = false
          tvShow.backdropPath = "/hS2xAK3X1oWiaA8OX5Bow2SF6KN.jpg"
          tvShow.genreIDs = [35]
          tvShow.originCountry = ["GB"]
          tvShow.originalLanguage = "en"
          tvShow.originalName = "Bottom"
          tvShow.overview =
            "Richie Richard (socially awkward, sexually inexperienced) and Eddie Hitler (carefree alcoholic ) are two social outcasts living on the dole. Trapped together in a squalid flat in Hammersmith, London they are perpetually skint, bored and sexually frustrated. They spend their days scheming, bickering, and being nasty and sadistic to each other."
          tvShow.popularity = 7.5291
          tvShow.posterPath = "/bOrajiWj3Rax8KZ4ZZWcw2KpJD6.jpg"
          tvShow.firstAirDate = "1991-09-17"
          tvShow.name = "Bottom"
          tvShow.voteAverage = 7.9
          tvShow.voteCount = 128
          return tvShow
        }(),
        {
          var tvShow = TVShow(id: 4297)
          tvShow.adult = false
          tvShow.backdropPath = "/izWGnAJpD6Lthmq39s7Uyja2RgW.jpg"
          tvShow.genreIDs = [99, 10759, 80, 18]
          tvShow.originCountry = ["CA", "US"]
          tvShow.originalLanguage = "en"
          tvShow.originalName = "The Equalizer"
          tvShow.overview =
            #"Robert McCall is a former agent of a secret government agency who is now running his own private crime fighting operation where he fashions himself as "The Equalizer." It is a service for victims of the system who have exhausted all possible means of seeking justice and have nowhere to go. McCall promises to even out the odds for them."#
          tvShow.popularity = 33.2247
          tvShow.posterPath = "/7nrKPxGJWYe5cacNN9AV9bVplNZ.jpg"
          tvShow.firstAirDate = "1985-09-18"
          tvShow.name = "The Equalizer"
          tvShow.voteAverage = 7.197
          tvShow.voteCount = 61
          return tvShow
        }(),
        {
          var tvShow = TVShow(id: 4298)
          tvShow.adult = false
          tvShow.backdropPath = "/jrOUuhskiGNiHbEcAQv8xsh4uPF.jpg"
          tvShow.genreIDs = [35]
          tvShow.originCountry = ["US"]
          tvShow.originalLanguage = "en"
          tvShow.originalName = "Campus Ladies"
          tvShow.overview =
            #"Campus Ladies is an American sitcom that premiered on Oxygen on January 8, 2006. It stars Christen Sussin and Carrie Aizley as two 40-something women who decide to go enroll at the fictional University of the Midwest. The humor comes from the various situations the "ladies" get involved in while trying to fit in with their much younger friends and classmates."#
          tvShow.popularity = 8.6864
          tvShow.posterPath = "/nxvJawrY41TIWT9hCLHsM56Syyf.jpg"
          tvShow.firstAirDate = "2006-01-08"
          tvShow.name = "Campus Ladies"
          tvShow.voteAverage = 3.5
          tvShow.voteCount = 2
          return tvShow
        }(),
      ],
      totalPages: 3278,
      totalResults: 65543
    )
    return mock
  }()
}
