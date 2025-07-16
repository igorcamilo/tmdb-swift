//
//  Client.swift
//  TMDB
//
//  Created by Igor Camilo on 16.07.25.
//

import Foundation

public final class Client: Sendable {
    public let accessToken: String
    public let getData: GetData

    private let decoder = JSONDecoder()

    public init(
        accessToken: String,
        getData: GetData? = nil
    ) {
        self.accessToken = accessToken
        self.getData = getData ?? {
            try await URLSession.shared.data(for: $0).0
        }
    }

    public func configuration() async throws -> Configuration {
        var urlRequest = try urlRequest()
        urlRequest.url?.appendPathComponent("configuration")
        let data = try await getData(urlRequest)
        return try decoder.decode(Configuration.self, from: data)
    }

    private func urlRequest() throws -> URLRequest {
        let baseURLString = "https://api.themoviedb.org/3/"
        guard let baseURL = URL(string: baseURLString) else {
            throw ClientError.invalidBaseURL(baseURLString)
        }
        var urlRequest = URLRequest(url: baseURL)
        urlRequest.allHTTPHeaderFields = [
          "accept": "application/json",
          "Authorization": "Bearer \(accessToken)"
        ]
        return urlRequest
    }

    public typealias GetData = @Sendable (URLRequest) async throws -> Data
}

public enum ClientError: Error {
    case invalidBaseURL(String)
}
