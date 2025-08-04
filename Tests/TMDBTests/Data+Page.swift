import Foundation

extension Data {
  static let page = Data(content.utf8)
}

private let content = #"""
  {
    "page": 1,
    "results": [
    ],
    "total_pages": 11,
    "total_results": 206
  }
  """#
