import TMDB
import Testing

struct ConfigurationDetailsTests {
  private var testImages: ConfigurationDetails.Images {
    ConfigurationDetails.Images(
      secureBaseURL: "https://kinova.igorcamilo.com/"
    )
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
  func imagesBackdropURL(width: Double?, path: BackdropPath, expectedURL: String) {
    // Setup
    var images = testImages
    images.backdropSizes = ["abc", "w122", "h123", "w123", "w124", "xyz"]
    // Test
    let url = images.url(width: width, path: path)
    // Verify
    #expect(url?.absoluteString == expectedURL)
  }

  @Test func imagesBackdropNoURL() {
    // Setup
    var images = ConfigurationDetails.Images()
    images.backdropSizes = ["abc"]
    // Test
    let url = images.url(path: "/123.png" as BackdropPath)
    // Verify
    #expect(url == nil)
  }

  @Test func imagesBackdropNoPath() {
    // Test
    let url = testImages.url(path: "/123.svg" as BackdropPath)
    // Verify
    #expect(url == nil)
  }

  @Test(
    arguments: [
      (100.0, "/logo.png", "https://kinova.igorcamilo.com/w122/logo.png"),
      (122.001, "/logo2.png", "https://kinova.igorcamilo.com/w123/logo2.png"),
      (123.0, "/logo3.png", "https://kinova.igorcamilo.com/w123/logo3.png"),
      (123.999, "/logo4.png", "https://kinova.igorcamilo.com/w124/logo4.png"),
      (124.0, "/logo5.png", "https://kinova.igorcamilo.com/w124/logo5.png"),
      (800.0, "/logo6.png", "https://kinova.igorcamilo.com/xyz/logo6.png"),
      (1000.0, "/logo7.png", "https://kinova.igorcamilo.com/xyz/logo7.png"),
      (nil, "/logo8.png", "https://kinova.igorcamilo.com/xyz/logo8.png"),
    ]
  )
  func imagesLogoURL(width: Double?, path: LogoPath, expectedURL: String) {
    var images = testImages
    images.logoSizes = ["abc", "w122", "h123", "w123", "w124", "xyz"]
    let url = images.url(width: width, path: path)
    #expect(url?.absoluteString == expectedURL)
  }

  @Test func imagesLogoNoURL() {
    var images = ConfigurationDetails.Images()
    images.logoSizes = ["abc"]
    let url = images.url(path: "logo.png" as LogoPath)
    #expect(url == nil)
  }

  @Test func imagesLogoNoPath() {
    let url = testImages.url(path: "logo.svg" as LogoPath)
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
  func imagesPosterURL(width: Double?, path: PosterPath, expectedURL: String) {
    // Setup
    var images = testImages
    images.posterSizes = ["abc", "w122", "h123", "w123", "w124", "xyz"]
    // Test
    let url = images.url(width: width, path: path)
    // Verify
    #expect(url?.absoluteString == expectedURL)
  }

  @Test func imagesPosterNoURL() {
    // Setup
    var images = ConfigurationDetails.Images()
    images.posterSizes = ["abc"]
    // Test
    let url = images.url(path: "/456.png" as PosterPath)
    // Verify
    #expect(url == nil)
  }

  @Test func imagesPosterNoPath() {
    // Test
    let url = testImages.url(path: "/456.svg" as PosterPath)
    // Verify
    #expect(url == nil)
  }

  @Test(
    arguments: [
      (100.0, "/profile.png", "https://kinova.igorcamilo.com/w122/profile.png"),
      (122.001, "/profile2.png", "https://kinova.igorcamilo.com/w123/profile2.png"),
      (123.0, "/profile3.png", "https://kinova.igorcamilo.com/w123/profile3.png"),
      (123.999, "/profile4.png", "https://kinova.igorcamilo.com/w124/profile4.png"),
      (124.0, "/profile5.png", "https://kinova.igorcamilo.com/w124/profile5.png"),
      (800.0, "/profile6.png", "https://kinova.igorcamilo.com/xyz/profile6.png"),
      (1000.0, "/profile7.png", "https://kinova.igorcamilo.com/xyz/profile7.png"),
      (nil, "/profile8.png", "https://kinova.igorcamilo.com/xyz/profile8.png"),
    ]
  )
  func imagesProfileURL(width: Double?, path: ProfilePath, expectedURL: String) {
    var images = testImages
    images.profileSizes = ["abc", "w122", "h123", "w123", "w124", "xyz"]
    let url = images.url(width: width, path: path)
    #expect(url?.absoluteString == expectedURL)
  }

  @Test func imagesProfileNoURL() {
    var images = ConfigurationDetails.Images()
    images.profileSizes = ["abc"]
    let url = images.url(path: "profile.png" as ProfilePath)
    #expect(url == nil)
  }

  @Test func imagesProfileNoPath() {
    let url = testImages.url(path: "profile.svg" as ProfilePath)
    #expect(url == nil)
  }

  @Test(
    arguments: [
      (100.0, "/still.png", "https://kinova.igorcamilo.com/w122/still.png"),
      (122.001, "/still2.png", "https://kinova.igorcamilo.com/w123/still2.png"),
      (123.0, "/still3.png", "https://kinova.igorcamilo.com/w123/still3.png"),
      (123.999, "/still4.png", "https://kinova.igorcamilo.com/w124/still4.png"),
      (124.0, "/still5.png", "https://kinova.igorcamilo.com/w124/still5.png"),
      (800.0, "/still6.png", "https://kinova.igorcamilo.com/xyz/still6.png"),
      (1000.0, "/still7.png", "https://kinova.igorcamilo.com/xyz/still7.png"),
      (nil, "/still8.png", "https://kinova.igorcamilo.com/xyz/still8.png"),
    ]
  )
  func imagesStillURL(width: Double?, path: StillPath, expectedURL: String) {
    var images = testImages
    images.stillSizes = ["abc", "w122", "h123", "w123", "w124", "xyz"]
    let url = images.url(width: width, path: path)
    #expect(url?.absoluteString == expectedURL)
  }

  @Test func imagesStillNoURL() {
    var images = ConfigurationDetails.Images()
    images.stillSizes = ["abc"]
    let url = images.url(path: "still.png" as StillPath)
    #expect(url == nil)
  }

  @Test func imagesStillNoPath() {
    let url = testImages.url(path: "still.svg" as StillPath)
    #expect(url == nil)
  }
}
