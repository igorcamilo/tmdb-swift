import Foundation
import TMDB
import Testing

struct ImagesTests {
  @Test(
    arguments: [
      (100.0, "/123.jpg", "https://kinova.co/w122/123.jpg"),
      (122.001, "/456.jpg", "https://kinova.co/w123/456.jpg"),
      (123.0, "/789.jpg", "https://kinova.co/w123/789.jpg"),
      (123.999, "/123.svg", "https://kinova.co/w124/123.svg"),
      (124.0, "/123.jpg", "https://kinova.co/w124/123.jpg"),
      (800.0, "/456.jpg", "https://kinova.co/xyz/456.jpg"),
      (1000.0, "/789.jpg", "https://kinova.co/xyz/789.jpg"),
      (nil, "/123.svg", "https://kinova.co/xyz/123.svg"),
    ]
  )
  func backdropURL(width: CGFloat?, path: BackdropPath, expectedURL: String) throws {
    // Setup
    let images = try Images(
      baseURL: #require(URL(string: "https://kinova.co/")),
      secureBaseURL: #require(URL(string: "https://kinova.co/")),
      backdropSizes: ["abc", "w122", "h123", "w123", "w124", "xyz"],
      logoSizes: [],
      posterSizes: [],
      profileSizes: [],
      stillSizes: []
    )
    // Test
    let url = images.url(width: width, path: path)
    // Verify
    #expect(url?.absoluteString == expectedURL)
  }

  @Test
  func backdropNoURL() throws {
    // Setup
    let images = try Images(
      baseURL: #require(URL(string: "https://kinova.co/")),
      secureBaseURL: #require(URL(string: "https://kinova.co/")),
      backdropSizes: [],
      logoSizes: [],
      posterSizes: [],
      profileSizes: [],
      stillSizes: []
    )
    // Test
    let url = images.url(path: "/123.jpg" as BackdropPath)
    // Verify
    #expect(url == nil)
  }

  @Test(
    arguments: [
      (100.0, "/123.jpg", "https://kinova.co/w122/123.jpg"),
      (122.001, "/456.jpg", "https://kinova.co/w123/456.jpg"),
      (123.0, "/789.jpg", "https://kinova.co/w123/789.jpg"),
      (123.999, "/123.svg", "https://kinova.co/w124/123.svg"),
      (124.0, "/123.jpg", "https://kinova.co/w124/123.jpg"),
      (800.0, "/456.jpg", "https://kinova.co/xyz/456.jpg"),
      (1000.0, "/789.jpg", "https://kinova.co/xyz/789.jpg"),
      (nil, "/123.svg", "https://kinova.co/xyz/123.svg"),
    ]
  )
  func posterURL(width: CGFloat?, path: PosterPath, expectedURL: String) async throws {
    // Setup
    let images = try Images(
      baseURL: #require(URL(string: "https://kinova.co/")),
      secureBaseURL: #require(URL(string: "https://kinova.co/")),
      backdropSizes: [],
      logoSizes: [],
      posterSizes: ["abc", "w122", "h123", "w123", "w124", "xyz"],
      profileSizes: [],
      stillSizes: []
    )
    // Test
    let url = images.url(width: width, path: path)
    // Verify
    #expect(url?.absoluteString == expectedURL)
  }

  @Test
  func posterNoURL() throws {
    // Setup
    let images = try Images(
      baseURL: #require(URL(string: "https://kinova.co/")),
      secureBaseURL: #require(URL(string: "https://kinova.co/")),
      backdropSizes: [],
      logoSizes: [],
      posterSizes: [],
      profileSizes: [],
      stillSizes: []
    )
    // Test
    let url = images.url(path: "/123.jpg" as PosterPath)
    // Verify
    #expect(url == nil)
  }
}
