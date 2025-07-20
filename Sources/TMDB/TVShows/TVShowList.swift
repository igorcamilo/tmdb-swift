public enum TVShowList: Codable, Hashable, Identifiable, Sendable {
    case airingToday
    case onTheAir
    case popular
    case topRated

    public var id: Self { self }

    var pathComponent: String {
        switch self {
        case .airingToday: return "tv/airing_today"
        case .onTheAir: return "tv/on_the_air"
        case .popular: return "tv/popular"
        case .topRated: return "tv/top_rated"
        }
    }
}
