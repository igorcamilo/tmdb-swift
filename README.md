
# TMDB

[![Swift](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Figorcamilo%2Ftmdb-swift%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/igorcamilo/tmdb-swift)
[![Platforms](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Figorcamilo%2Ftmdb-swift%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/igorcamilo/tmdb-swift)
[![Unit tests](https://github.com/igorcamilo/tmdb-swift/actions/workflows/unit-tests.yml/badge.svg)](https://github.com/igorcamilo/tmdb-swift/actions/workflows/unit-tests.yml)
[![codecov](https://codecov.io/gh/igorcamilo/tmdb-swift/graph/badge.svg?token=UTNJA0Y5JS)](https://codecov.io/gh/igorcamilo/tmdb-swift)

Swift client for [The Movie Database (TMDB) API](https://www.themoviedb.org/documentation/api), supporting movies, TV shows, and configuration endpoints. Built for modern Swift and concurrency.

---

## Features

- Fetch movies and TV shows by popularity, rating, trending, and more
- Retrieve similar movies/TV shows
- Access TMDB configuration (image base URLs, sizes, etc.)
- Codable, Sendable, and concurrency-friendly API
- Supports iOS, macOS, tvOS, and watchOS
- 100% Swift, no dependencies
- Unit tested

## Requirements

- Swift 5.9+ on Apple platforms
- Swift 6.0+ on Linux
- iOS 13.0+, macOS 10.15+, tvOS 13.0+, watchOS 6.0+

## Installation

Add the package to your `Package.swift`:

```swift
.package(url: "https://github.com/igorcamilo/tmdb-swift.git", from: "0.1.0")
```

Or use Xcode's Swift Package Manager integration.

## Usage

```swift
import TMDB

let client = Client(accessToken: "YOUR_TMDB_ACCESS_TOKEN")

// Fetch popular movies
let page = try await client.movies(list: .popular)
for movie in page.results {
    print(movie.title)
}

// Fetch trending TV shows
let tvPage = try await client.tvShows(list: .trending(.day))
for show in tvPage.results {
    print(show.name)
}

// Fetch API configuration
let config = try await client.configuration()
print(config.images.baseURL)
```

## API Overview

### Movies
- `.nowPlaying` — In theatres
- `.popular` — By popularity
- `.topRated` — By rating
- `.upcoming` — Coming soon
- `.similar(Movie.ID)` — Similar movies
- `.trending(TrendingTimeWindow)` — Trending

### TV Shows
- `.airingToday` — Airing today
- `.onTheAir` — Next 7 days
- `.popular` — By popularity
- `.topRated` — By rating
- `.similar(TVShow.ID)` — Similar shows
- `.trending(TrendingTimeWindow)` — Trending

### Configuration
- `client.configuration()` — Get image base URLs, sizes, etc.

## Testing

Run all tests with:

```sh
swift test
```

## Code Style

- 2-space indentation and Unix line endings enforced via `.editorconfig`.
- Linting is automated in CI with Swift Format.

## License

MIT License. See [LICENSE](LICENSE).

## Acknowledgments

- [TMDB](https://www.themoviedb.org/) for the movie/TV data API

---

> This project is not affiliated with TMDB. You need your own TMDB API access token.
