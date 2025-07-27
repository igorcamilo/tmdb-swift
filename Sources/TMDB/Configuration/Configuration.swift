public struct Configuration: Codable, Hashable, Sendable {
    public var changeKeys: [String]
    public var images: Images

    public init(
        changeKeys: [String],
        images: Images
    ) {
        self.changeKeys = changeKeys
        self.images = images
    }

    private enum CodingKeys: String, CodingKey {
        case changeKeys = "change_keys"
        case images
    }
}
