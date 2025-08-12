public struct Page<T: Codable & Hashable & Sendable>: Codable, Hashable, Sendable {
  public var page: Int
  public var results: [T]
  public var totalPages: Int
  public var totalResults: Int

  public init(
    page: Int,
    results: [T],
    totalPages: Int,
    totalResults: Int
  ) {
    self.page = page
    self.results = results
    self.totalPages = totalPages
    self.totalResults = totalResults
  }

  private enum CodingKeys: String, CodingKey {
    case page
    case results
    case totalPages = "total_pages"
    case totalResults = "total_results"
  }
}
