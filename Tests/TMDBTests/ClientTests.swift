//
//  ClientTests.swift
//  TMDB
//
//  Created by Igor Camilo on 16.07.25.
//

#if swift(>=6.0)

import Foundation
import Testing
import TMDB

struct ClientTests {
    @Test
    func configurationSuccess() async throws {
        // Setup
        let urlRequestStorage = TestStorage<URLRequest>()
        // Test
        let client = Client(accessToken: "ABC123") {
            await urlRequestStorage.setValue($0)
            return Response(data: .configuration, statusCode: 200)
        }
        await #expect(throws: Never.self) {
            try await client.configuration()
        }
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

    @Test
    func configurationFailureResponse() async throws {
        // Setup
        let urlRequestStorage = TestStorage<URLRequest>()
        // Test
        let client = Client(accessToken: "DEF456") {
            await urlRequestStorage.setValue($0)
            return Response(data: .errorContent, statusCode: 400)
        }
        await #expect(throws: ErrorContent.self) {
            try await client.configuration()
        }
        // Verify
        let urlRquest = try #require(await urlRequestStorage.value)
        #expect(urlRquest.url?.absoluteString == "https://api.themoviedb.org/3/configuration")
        #expect(urlRquest.httpMethod == "GET")
        #expect(urlRquest.httpBody == nil)
        #expect(
            urlRquest.allHTTPHeaderFields == [
                "Authorization": "Bearer DEF456",
                "Accept": "application/json",
            ]
        )
    }

    @Test
    func configurationFailureRequest() async throws {
        // Setup
        struct TestError: Error {}
        let urlRequestStorage = TestStorage<URLRequest>()
        // Test
        let client = Client(accessToken: "GHI789") {
            await urlRequestStorage.setValue($0)
            throw TestError()
        }
        await #expect(throws: TestError.self) {
            try await client.configuration()
        }
        // Verify
        let urlRquest = try #require(await urlRequestStorage.value)
        #expect(urlRquest.url?.absoluteString == "https://api.themoviedb.org/3/configuration")
        #expect(urlRquest.httpMethod == "GET")
        #expect(urlRquest.httpBody == nil)
        #expect(
            urlRquest.allHTTPHeaderFields == [
                "Authorization": "Bearer GHI789",
                "Accept": "application/json",
            ]
        )
    }
}

#endif
