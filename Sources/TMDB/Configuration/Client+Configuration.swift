extension Client {
    public func configuration() async throws -> Configuration {
        var urlRequest = try urlRequest()
        urlRequest.url?.appendPathComponent("configuration")
        let response = try await performRequest(urlRequest)
        if response.statusCode == 200 {
            return try decoder.decode(Configuration.self, from: response.data)
        } else {
            throw try decoder.decode(ErrorContent.self, from: response.data)
        }
    }
}
