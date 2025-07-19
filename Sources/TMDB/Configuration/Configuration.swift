//
//  Configuration.swift
//  TMDB
//
//  Created by Igor Camilo on 16.07.25.
//

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
        public var posterSizes: [String]
        public var profileSizes: [String]
        public var stillSizes: [String]

        public init(
            baseURL: URL,
            secureBaseURL: URL,
            backdropSizes: [String],
            logoSizes: [String],
            posterSizes: [String],
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
