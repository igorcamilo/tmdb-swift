import Foundation

extension Data {
  static let errorContent = Data(content.utf8)
}

private let content = #"""
  {
      "status_code": 7,
      "status_message": "Invalid API key: You must be granted a valid key.",
      "success": false
  }
  """#
