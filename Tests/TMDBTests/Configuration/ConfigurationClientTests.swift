import CustomDump
import Dependencies
import Foundation
import Testing

@testable import TMDB

#if canImport(FoundationNetworking)
  import FoundationNetworking
#endif

struct ConfigurationClientTests {
  @Test func register() async throws {
    let detailsCalls = LockIsolated<[String]>([])
    let details = try await withDependencies {
      $0.configurationClient.details = { accessToken in
        detailsCalls.withValue { $0.append(accessToken) }
        return expectedDetails()
      }
    } operation: {
      @Dependency(\.configurationClient) var configurationClient
      return try await configurationClient.details("ABC123")
    }
    expectNoDifference(details, expectedDetails())
    #expect(detailsCalls.value.count == 1)
    let accessToken = try #require(detailsCalls.value.first)
    expectNoDifference(accessToken, "ABC123")
  }

  @Test func detailsSuccess() async throws {
    let fetchCalls = LockIsolated<[URLRequest]>([])
    let sharedClient = SharedClient(
      fetch: { request in
        fetchCalls.withValue { $0.append(request) }
        let response = try HTTPURLResponse(
          url: #require(URL(string: "https://image.tmdb.org/t/p/")),
          statusCode: 200,
          httpVersion: nil,
          headerFields: nil
        )
        return try (Data(detailsMock.utf8), #require(response))
      }
    )
    let configurationClient = ConfigurationClient.liveValue
    let details = try await withDependencies {
      $0.sharedClient = sharedClient
    } operation: {
      try await configurationClient.details("ABC123")
    }
    expectNoDifference(details, expectedDetails())
    #expect(fetchCalls.value.count == 1)
    let urlRequest = try #require(fetchCalls.value.first)
    expectNoDifference(urlRequest, expectedURLRequest())
  }
}

private func expectedDetails() -> ConfigurationDetails {
  return ConfigurationDetails(
    changeKeys: [
      "adult",
      "air_date",
      "also_known_as",
      "alternative_titles",
      "biography",
      "birthday",
      "budget",
      "cast",
      "certifications",
      "character_names",
      "created_by",
      "crew",
      "deathday",
      "episode",
      "episode_number",
      "episode_run_time",
      "freebase_id",
      "freebase_mid",
      "general",
      "genres",
      "guest_stars",
      "homepage",
      "images",
      "imdb_id",
      "languages",
      "name",
      "network",
      "origin_country",
      "original_name",
      "original_title",
      "overview",
      "parts",
      "place_of_birth",
      "plot_keywords",
      "production_code",
      "production_companies",
      "production_countries",
      "releases",
      "revenue",
      "runtime",
      "season",
      "season_number",
      "season_regular",
      "spoken_languages",
      "status",
      "tagline",
      "title",
      "translations",
      "tvdb_id",
      "tvrage_id",
      "type",
      "video",
      "videos",
    ],
    images: ConfigurationDetails.Images(
      baseURL: "http://image.tmdb.org/t/p/",
      secureBaseURL: "https://image.tmdb.org/t/p/",
      backdropSizes: [
        "w300",
        "w780",
        "w1280",
        "original",
      ],
      logoSizes: [
        "w45",
        "w92",
        "w154",
        "w185",
        "w300",
        "w500",
        "original",
      ],
      posterSizes: [
        "w92",
        "w154",
        "w185",
        "w342",
        "w500",
        "w780",
        "original",
      ],
      profileSizes: [
        "w45",
        "w185",
        "h632",
        "original",
      ],
      stillSizes: [
        "w92",
        "w185",
        "w300",
        "original",
      ]
    )
  )
}

private func expectedURLRequest() -> URLRequest? {
  let url = URL(string: "https://api.themoviedb.org/3/configuration")!
  var urlRequest = URLRequest(url: url)
  urlRequest.allHTTPHeaderFields = [
    "Accept": "application/json",
    "Authorization": "Bearer ABC123",
  ]
  return urlRequest
}

private let detailsMock = #"""
  {
    "change_keys": [
      "adult",
      "air_date",
      "also_known_as",
      "alternative_titles",
      "biography",
      "birthday",
      "budget",
      "cast",
      "certifications",
      "character_names",
      "created_by",
      "crew",
      "deathday",
      "episode",
      "episode_number",
      "episode_run_time",
      "freebase_id",
      "freebase_mid",
      "general",
      "genres",
      "guest_stars",
      "homepage",
      "images",
      "imdb_id",
      "languages",
      "name",
      "network",
      "origin_country",
      "original_name",
      "original_title",
      "overview",
      "parts",
      "place_of_birth",
      "plot_keywords",
      "production_code",
      "production_companies",
      "production_countries",
      "releases",
      "revenue",
      "runtime",
      "season",
      "season_number",
      "season_regular",
      "spoken_languages",
      "status",
      "tagline",
      "title",
      "translations",
      "tvdb_id",
      "tvrage_id",
      "type",
      "video",
      "videos"
    ],
    "images": {
      "base_url": "http://image.tmdb.org/t/p/",
      "secure_base_url": "https://image.tmdb.org/t/p/",
      "backdrop_sizes": [
        "w300",
        "w780",
        "w1280",
        "original"
      ],
      "logo_sizes": [
        "w45",
        "w92",
        "w154",
        "w185",
        "w300",
        "w500",
        "original"
      ],
      "poster_sizes": [
        "w92",
        "w154",
        "w185",
        "w342",
        "w500",
        "w780",
        "original"
      ],
      "profile_sizes": [
        "w45",
        "w185",
        "h632",
        "original"
      ],
      "still_sizes": [
        "w92",
        "w185",
        "w300",
        "original"
      ]
    }
  }
  """#
