//
//  MovieClientTests.swift
//  TMDB
//
//  Created by Igor Camilo on 13.08.25.
//

import CustomDump
import Dependencies
import Foundation
import Testing

@testable import TMDB

#if canImport(FoundationNetworking)
  import FoundationNetworking
#endif

struct MovieClientTests {
  @Test func register() async throws {
    let detailsCalls = LockIsolated<[(Movie.ID, [MovieAppendOptions], Locale?, AccessToken)]>([])
    _ = try await withDependencies {
      $0.movieClient.details = { id, appending, locale, accessToken in
        detailsCalls.withValue { $0.append((id, appending, locale, accessToken)) }
        return MovieDetails(id: 123)
      }
    } operation: {
      @Dependency(\.movieClient) var movieClient
      return try await movieClient.details(123, [.keywords], Locale(identifier: "en"), "ABC123")
    }
    #expect(detailsCalls.value.count == 1)
    let call = try #require(detailsCalls.value.first)
    expectNoDifference(call.0, 123)
    expectNoDifference(call.1, [.keywords])
    expectNoDifference(call.2, Locale(identifier: "en"))
    expectNoDifference(call.3, "ABC123")
  }

  @Test func detailsSuccess() async throws {
    let fetchCalls = LockIsolated<[URLRequest]>([])
    let sharedClient = SharedClient(
      fetch: { request in
        fetchCalls.withValue { $0.append(request) }
        let response = try HTTPURLResponse(
          url: #require(URL(string: "https://api.themoviedb.org/3/movie/123")),
          statusCode: 200,
          httpVersion: nil,
          headerFields: nil
        )
        return try (.movieDetailsMock, #require(response))
      }
    )
    let movieClient = MovieClient.liveValue
    let details = try await withDependencies {
      $0.sharedClient = sharedClient
    } operation: {
      try await movieClient.details(123, [.keywords], Locale(identifier: "en"), "ABC123")
    }
    expectNoDifference(details, .mock)
    #expect(fetchCalls.value.count == 1)
    let urlRequest = try #require(fetchCalls.value.first)
    expectNoDifference(urlRequest, expectedURLRequest())
  }
}

private func expectedURLRequest() -> URLRequest? {
  let url = URL(
    string:
      "https://api.themoviedb.org/3/movie/ID(rawValue:%20123)?append_to_response=keywords&language=en"
  )!
  var urlRequest = URLRequest(url: url)
  urlRequest.allHTTPHeaderFields = [
    "Accept": "application/json",
    "Authorization": "Bearer ABC123",
  ]
  return urlRequest
}
