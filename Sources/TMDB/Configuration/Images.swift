import Foundation

public struct Images: Codable, Hashable, Sendable {
  public var baseURL = ""
  public var secureBaseURL = ""
  public var backdropSizes: [BackdropSize] = []
  public var logoSizes: [String] = []
  public var posterSizes: [PosterSize] = []
  public var profileSizes: [String] = []
  public var stillSizes: [String] = []

  public init() {}

  public func size<T: RawRepresentable<String>>(
    width: Double? = nil,
    from list: KeyPath<Images, [T]>
  ) -> T? {
    guard let width else {
      return self[keyPath: list].last
    }
    let size = self[keyPath: list].first {
      guard
        $0.rawValue.hasPrefix("w"),
        let elementWidth = Double($0.rawValue.dropFirst())
      else {
        return false
      }
      return elementWidth >= width
    }
    return size ?? self[keyPath: list].last
  }

  public func url<T: ImagePath>(
    size: T.ImageSize,
    path: T
  ) -> URL? {
    guard
      let url = URL(string: secureBaseURL)
    else {
      return nil
    }
    return url.appendingPathComponent(
      size.rawValue + path.rawValue
    )
  }

  public func url<T: ImagePath>(
    width: Double? = nil,
    path: T
  ) -> URL? {
    guard
      let size = size(width: width, from: T.keyPath)
    else {
      return nil
    }
    return url(size: size, path: path)
  }

  private enum CodingKeys: String, CodingKey {
    case baseURL = "base_url"
    case secureBaseURL = "secure_base_url"
    case backdropSizes = "backdrop_sizes"
    case logoSizes = "logo_sizes"
    case posterSizes = "poster_sizes"
    case profileSizes = "profile_sizes"
    case stillSizes = "still_sizes"
  }
}
