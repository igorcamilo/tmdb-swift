extension Client {
    public func tvShows(list: TVShowList) async throws -> PageContent<TVShow> {
        var urlRequest = try urlRequest()
        urlRequest.url?.appendPathComponent(list.pathComponent)
        let response = try await performRequest(urlRequest)
        if response.statusCode == 200 {
            return try decoder.decode(PageContent<TVShow>.self, from: response.data)
        } else {
            throw try decoder.decode(ErrorContent.self, from: response.data)
        }
    }
}
