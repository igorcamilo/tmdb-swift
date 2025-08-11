import Foundation
import TMDB
import Testing

struct ConfigurationTests {
  @Test func decodeCompleteData() throws {
    // Setup
    let data = Data.configuration
    let decoder = JSONDecoder()
    // Test
    let configuration = try decoder.decode(Configuration.self, from: data)
    // Verify
    #expect(configuration.changeKeys.count == 53)
    #expect(configuration.images.baseURL == "http://image.tmdb.org/t/p/")
    #expect(configuration.images.secureBaseURL == "https://image.tmdb.org/t/p/")
    #expect(configuration.images.backdropSizes.count == 4)
    #expect(configuration.images.logoSizes.count == 7)
    #expect(configuration.images.posterSizes.count == 7)
    #expect(configuration.images.profileSizes.count == 4)
    #expect(configuration.images.stillSizes.count == 4)
  }
}
