import TMDB
import Testing

struct ImagesTests {
  private var testImages: Images {
    var images = Images()
    images.secureBaseURL = "https://kinova.igorcamilo.com/"
    return images
  }

  @Test(
    arguments: [
      (100.0, "/123.jpg", "https://kinova.igorcamilo.com/w122/123.jpg"),
      (122.001, "/456.jpg", "https://kinova.igorcamilo.com/w123/456.jpg"),
      (123.0, "/789.jpg", "https://kinova.igorcamilo.com/w123/789.jpg"),
      (123.999, "/123.svg", "https://kinova.igorcamilo.com/w124/123.svg"),
      (124.0, "/123.jpg", "https://kinova.igorcamilo.com/w124/123.jpg"),
      (800.0, "/456.jpg", "https://kinova.igorcamilo.com/xyz/456.jpg"),
      (1000.0, "/789.jpg", "https://kinova.igorcamilo.com/xyz/789.jpg"),
      (nil, "/123.svg", "https://kinova.igorcamilo.com/xyz/123.svg"),
    ]
  )
  func backdropURL(width: Double?, path: BackdropPath, expectedURL: String) {
    // Setup
    var images = testImages
    images.backdropSizes = ["abc", "w122", "h123", "w123", "w124", "xyz"]
    // Test
    let url = images.url(width: width, path: path)
    // Verify
    #expect(url?.absoluteString == expectedURL)
  }

  @Test func backdropNoURL() {
    // Setup
    var images = Images()
    images.backdropSizes = ["abc"]
    // Test
    let url = images.url(path: "/123.png" as BackdropPath)
    // Verify
    #expect(url == nil)
  }

  @Test func backdropNoPath() {
    // Test
    let url = testImages.url(path: "/123.svg" as BackdropPath)
    // Verify
    #expect(url == nil)
  }

  @Test(
    arguments: [
      (100.0, "/123.jpg", "https://kinova.igorcamilo.com/w122/123.jpg"),
      (122.001, "/456.jpg", "https://kinova.igorcamilo.com/w123/456.jpg"),
      (123.0, "/789.jpg", "https://kinova.igorcamilo.com/w123/789.jpg"),
      (123.999, "/123.svg", "https://kinova.igorcamilo.com/w124/123.svg"),
      (124.0, "/123.jpg", "https://kinova.igorcamilo.com/w124/123.jpg"),
      (800.0, "/456.jpg", "https://kinova.igorcamilo.com/xyz/456.jpg"),
      (1000.0, "/789.jpg", "https://kinova.igorcamilo.com/xyz/789.jpg"),
      (nil, "/123.svg", "https://kinova.igorcamilo.com/xyz/123.svg"),
    ]
  )
  func posterURL(width: Double?, path: PosterPath, expectedURL: String) {
    // Setup
    var images = testImages
    images.posterSizes = ["abc", "w122", "h123", "w123", "w124", "xyz"]
    // Test
    let url = images.url(width: width, path: path)
    // Verify
    #expect(url?.absoluteString == expectedURL)
  }

  @Test func posterNoURL() {
    // Setup
    var images = Images()
    images.posterSizes = ["abc"]
    // Test
    let url = images.url(path: "/456.png" as PosterPath)
    // Verify
    #expect(url == nil)
  }

  @Test func posterNoPath() {
    // Test
    let url = testImages.url(path: "/456.svg" as PosterPath)
    // Verify
    #expect(url == nil)
  }
}
