//
//  ClientTests.swift
//  TMDB
//
//  Created by Igor Camilo on 16.07.25.
//

import Foundation
import Testing
import TMDB

struct ClientTests {
    @Test
    func configuration() async throws {
        // Setup
        let urlRequestStorage = TestStorage<URLRequest>()
        // Test
        let client = Client(accessToken: "ABC123") {
            await urlRequestStorage.setValue($0)
            return .configuration
        }
        _ = try await client.configuration()
        // Verify
        let urlRquest = try #require(await urlRequestStorage.value)
        #expect(urlRquest.url?.absoluteString == "https://api.themoviedb.org/3/configuration")
        #expect(urlRquest.httpMethod == "GET")
        #expect(urlRquest.httpBody == nil)
        #expect(
            urlRquest.allHTTPHeaderFields == [
                "Authorization": "Bearer ABC123",
                "Accept": "application/json",
            ]
        )
    }
}
