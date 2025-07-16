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
        let responseURL = try #require(
            Bundle.module.url(
                forResource: "configuration",
                withExtension: "json"
            )
        )
        let responseData = try Data(contentsOf: responseURL)
        // Test
        let client = Client(accessToken: "ABC123") {
            await urlRequestStorage.setValue($0)
            return responseData
        }
        _ = try await client.configuration()
        // Vefify
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
