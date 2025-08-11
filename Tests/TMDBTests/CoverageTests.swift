import Foundation
import TMDB
import Testing

#if canImport(FoundationNetworking)
  import FoundationNetworking
#endif

struct CoverageTests {
  @Test func completeMissing() {
    // This is only meant to ensure all code is covered
    _ = Configuration()
    _ = Country()
    _ = Genre()
    _ = Keyword()
    _ = Language()
    _ = MovieCollection()
    _ = MovieDetails()
    _ = MovieDetails.Keywords()
    _ = ProductionCompany()
    _ = Response((Data(), URLResponse()))
    _ = TVShowDetails()
    _ = TVShowDetails.Keywords()
  }
}
