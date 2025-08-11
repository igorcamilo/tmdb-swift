import Foundation

extension Data {
  static let movieDetailsMinimal = Data(content.utf8)
}

private let content = #"""
  {
    "adult": false,
    "backdrop_path": null,
    "belongs_to_collection": null,
    "budget": 0,
    "genres": [],
    "homepage": "",
    "id": 1524528,
    "imdb_id": null,
    "origin_country": [
      "NL"
    ],
    "original_language": "nl",
    "original_title": "Home alone collection",
    "overview": "",
    "popularity": 0,
    "poster_path": null,
    "production_companies": [],
    "production_countries": [],
    "release_date": "",
    "revenue": 0,
    "runtime": 0,
    "spoken_languages": [],
    "status": "Released",
    "tagline": "",
    "title": "Home alone collection",
    "video": false,
    "vote_average": 0,
    "vote_count": 0
  }
  """#
