#if swift(>=6.0)
import Foundation
#else
@preconcurrency import Foundation
#endif

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

    public struct Images: Codable, Hashable, Sendable {
        public var baseURL: URL
        public var secureBaseURL: URL
        public var backdropSizes: [String]
        public var logoSizes: [String]
        public var posterSizes: [PosterSize]
        public var profileSizes: [String]
        public var stillSizes: [String]

        public init(
            baseURL: URL,
            secureBaseURL: URL,
            backdropSizes: [String],
            logoSizes: [String],
            posterSizes: [PosterSize],
            profileSizes: [String],
            stillSizes: [String]
        ) {
            self.baseURL = baseURL
            self.secureBaseURL = secureBaseURL
            self.backdropSizes = backdropSizes
            self.logoSizes = logoSizes
            self.posterSizes = posterSizes
            self.profileSizes = profileSizes
            self.stillSizes = stillSizes
        }

        public func size<T: ImageSize>(
            width: CGFloat? = nil,
            from list: KeyPath<Images, [T]>
        ) -> T? {
            size(
                width: width.map { Int(ceil($0)) },
                from: list
            )
        }

        public func size<T: ImageSize>(
            width: Int?,
            from list: KeyPath<Images, [T]>
        ) -> T? {
            guard let width else {
                return self[keyPath: list].last
            }
            let size = self[keyPath: list].first {
                guard
                    $0.rawValue.hasPrefix("w"),
                    let elementWidth = Int($0.rawValue.dropFirst())
                else {
                    return false
                }
                return elementWidth >= width
            }
            return size ?? self[keyPath: list].last
        }

        public func url<T: ImageSize>(
            size: T,
            path: T.ImagePath?
        ) -> URL? {
            guard let path else {
                return nil
            }
            return secureBaseURL.appendingPathComponent(
                size.rawValue + path.rawValue
            )
        }

        public protocol ImageSize<ImagePath>: RawRepresentable<String> {
            associatedtype ImagePath: RawRepresentable<String>
        }

        public struct PosterSize: Codable, Hashable, ImageSize, Sendable {
            public typealias ImagePath = PosterPath

            public var rawValue: String

            public init(rawValue: String) {
                self.rawValue = rawValue
            }
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

    private enum CodingKeys: String, CodingKey {
        case changeKeys = "change_keys"
        case images
    }
}
