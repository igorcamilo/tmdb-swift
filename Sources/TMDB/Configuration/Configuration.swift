public struct Configuration: Codable, Hashable, Sendable {
  public var changeKeys: [String] = []
  public var images = Images()

  public init() {
    // Makes initializer public
  }

  private enum CodingKeys: String, CodingKey {
    case changeKeys = "change_keys"
    case images
  }
}
