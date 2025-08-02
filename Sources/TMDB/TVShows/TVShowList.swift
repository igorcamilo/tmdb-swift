public enum TVShowList: Codable, Hashable, Identifiable, Sendable {
  /// TV shows airing today.
  case airingToday
  /// TV shows that air in the next 7 days.
  case onTheAir
  /// TV shows ordered by popularity.
  case popular
  /// TV shows ordered by rating.
  case topRated
  /// Similar TV shows based on genres and keywords.
  case similar(TVShow.ID)

  public var id: Self { self }

  var pathComponent: String {
    switch self {
    case .airingToday:
      "tv/airing_today"
    case .onTheAir:
      "tv/on_the_air"
    case .popular:
      "tv/popular"
    case .topRated:
      "tv/top_rated"
    case .similar(let id):
      "tv/\(id.rawValue)/similar"
    }
  }
}
