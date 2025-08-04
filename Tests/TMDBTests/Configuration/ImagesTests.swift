import Foundation
import TMDB
import Testing

struct ImagesTests {
  @Test(
    arguments: [
      (100.0, "w122"),
      (122.001, "w123"),
      (123.0, "w123"),
      (123.999, "w124"),
      (124.0, "w124"),
      (800.0, "xyz"),
      (1000.0, "xyz"),
      (nil, "xyz"),
    ]
  )
  func backdropSize(width: CGFloat?, expectedSize: BackdropSize) async throws {
    // Setup
    let allSizes: [BackdropSize] = ["abc", "w122", "h123", "w123", "w124", "xyz"]
    let images = try Images(
      baseURL: #require(URL(string: "https://kinova.co/")),
      secureBaseURL: #require(URL(string: "https://kinova.co/")),
      backdropSizes: allSizes,
      logoSizes: [],
      posterSizes: [],
      profileSizes: [],
      stillSizes: []
    )
    // Test
    let size = images.size(
      width: width,
      from: \.backdropSizes
    )
    // Verify
    #expect(size == expectedSize)
  }

  @Test(
    arguments: [
      (100.0, "w122"),
      (122.001, "w123"),
      (123.0, "w123"),
      (123.999, "w124"),
      (124.0, "w124"),
      (800.0, "xyz"),
      (1000.0, "xyz"),
      (nil, "xyz"),
    ]
  )
  func posterSize(width: CGFloat?, expectedSize: PosterSize) async throws {
    // Setup
    let allSizes: [PosterSize] = ["abc", "w122", "h123", "w123", "w124", "xyz"]
    let images = try Images(
      baseURL: #require(URL(string: "https://kinova.co/")),
      secureBaseURL: #require(URL(string: "https://kinova.co/")),
      backdropSizes: [],
      logoSizes: [],
      posterSizes: allSizes,
      profileSizes: [],
      stillSizes: []
    )
    // Test
    let size = images.size(
      width: width,
      from: \.posterSizes
    )
    // Verify
    #expect(size == expectedSize)
  }

  @Test(
    arguments: [
      ("w122", "/123.jpg", "https://kinova.co/w122/123.jpg"),
      ("w123", "/123.jpg", "https://kinova.co/w123/123.jpg"),
      ("w124", "/123.jpg", "https://kinova.co/w124/123.jpg"),
      ("xyz", "/123.jpg", "https://kinova.co/xyz/123.jpg"),
      ("w124", nil, nil),
      ("xyz", nil, nil),
    ]
  )
  func backdropURL(size: BackdropSize, path: BackdropPath?, expectedURL: String?) async throws {
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
    let url = images.url(size: size, path: path)
    // Verify
    #expect(url?.absoluteString == expectedURL)
  }

  @Test(
    arguments: [
      ("w122", "/123.jpg", "https://kinova.co/w122/123.jpg"),
      ("w123", "/123.jpg", "https://kinova.co/w123/123.jpg"),
      ("w124", "/123.jpg", "https://kinova.co/w124/123.jpg"),
      ("xyz", "/123.jpg", "https://kinova.co/xyz/123.jpg"),
      ("w124", nil, nil),
      ("xyz", nil, nil),
    ]
  )
  func posterURL(size: PosterSize, path: PosterPath?, expectedURL: String?) async throws {
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
    let url = images.url(size: size, path: path)
    // Verify
    #expect(url?.absoluteString == expectedURL)
  }
}
