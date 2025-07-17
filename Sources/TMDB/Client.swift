//
//  Client.swift
//  TMDB
//
//  Created by Igor Camilo on 16.07.25.
//

import Foundation

public final class Client: Sendable {
    public let accessToken: String
    public let performRequest: PerformRequest

    private let decoder = JSONDecoder()

    public init(
        accessToken: String,
        performRequest: PerformRequest? = nil
    ) {
        self.accessToken = accessToken
        self.performRequest = performRequest ?? {
            try await Response(URLSession.shared.data(for: $0))
        }
    }

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

    private func urlRequest() throws -> URLRequest {
        let baseURLString = "https://api.themoviedb.org/3/"
        guard let baseURL = URL(string: baseURLString) else {
            throw ClientError.invalidBaseURL(baseURLString)
        }
        var urlRequest = URLRequest(url: baseURL)
        urlRequest.allHTTPHeaderFields = [
          "Accept": "application/json",
          "Authorization": "Bearer \(accessToken)"
        ]
        return urlRequest
    }

    public typealias PerformRequest = @Sendable (URLRequest) async throws -> Response
}

public enum ClientError: Error {
    case invalidBaseURL(String)
}
