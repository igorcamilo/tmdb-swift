public enum Genre {
    public struct ID: Codable, Hashable, RawRepresentable, Sendable {
        public var rawValue: Int

        public init(rawValue: Int) {
            self.rawValue = rawValue
        }
    }
}