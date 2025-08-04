extension TMDBClient {
  public func configuration() async throws -> Configuration {
    let urlRequest = try urlRequest(relativePath: "configuration")
    let response = try await performRequest(urlRequest)
    if response.statusCode == 200 {
      return try decoder.decode(Configuration.self, from: response.data)
    } else {
      throw try decoder.decode(TMDBError.self, from: response.data)
    }
  }
}
