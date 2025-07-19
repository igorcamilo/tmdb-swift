//
//  Client.swift
//  TMDB
//
//  Created by Igor Camilo on 16.07.25.
//

#if swift(>=6.0)
import Foundation
#else
@preconcurrency import Foundation
#endif
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

public final class Client: Sendable {
    public let accessToken: String
    public let performRequest: PerformRequest

    let decoder = JSONDecoder()

    public init(
        accessToken: String,
        performRequest: PerformRequest? = nil
    ) {
        self.accessToken = accessToken
        self.performRequest = performRequest ?? {
            try await Response(URLSession.shared.data(for: $0))
        }
    }

    func urlRequest() throws -> URLRequest {
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
