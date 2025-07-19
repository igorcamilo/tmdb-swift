public enum MovieList: Codable, Hashable, Identifiable, Sendable {
    case nowPlaying
    case popular
    case topRated
    case upcoming

    public var id: Self { self }

    var pathComponent: String {
        switch self {
        case .nowPlaying: return "movie/now_playing"
        case .popular: return "movie/popular"
        case .topRated: return "movie/top_rated"
        case .upcoming: return "movie/upcoming"
        }
    }
}
