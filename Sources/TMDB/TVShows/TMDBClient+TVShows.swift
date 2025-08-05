import Foundation

#if canImport(FoundationNetworking)
  import FoundationNetworking
#endif

extension TMDBClient {
  public func tvShowDetails(
    id: TVShow.ID,
    appending: [TVShowDetailsAppendingOptions] = TVShowDetailsAppendingOptions.allCases
  ) async throws -> TVShowDetails {
    var queryItems: [URLQueryItem] = []
    if !appending.isEmpty {
      let value = appending.map(\.rawValue).joined(separator: ",")
      queryItems.append(URLQueryItem(name: "append_to_response", value: value))
    }
    let urlRequest = try urlRequest(
      relativePath: "tv/\(id.rawValue)",
      queryItems: queryItems.isEmpty ? nil : queryItems
    )
    let response = try await performRequest(urlRequest)
    if response.statusCode == 200 {
      return try decoder.decode(TVShowDetails.self, from: response.data)
    } else {
      throw try decoder.decode(TMDBError.self, from: response.data)
    }
  }

  public func tvShows(list: TVShowList) async throws -> Page<TVShow> {
    let urlRequest = try urlRequest(relativePath: list.relativePath)
    let response = try await performRequest(urlRequest)
    if response.statusCode == 200 {
      return try decoder.decode(Page<TVShow>.self, from: response.data)
    } else {
      throw try decoder.decode(TMDBError.self, from: response.data)
    }
  }
}
