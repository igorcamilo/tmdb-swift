public struct PosterPath: Codable, Hashable, RawRepresentable, Sendable {
    public var rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }
}
