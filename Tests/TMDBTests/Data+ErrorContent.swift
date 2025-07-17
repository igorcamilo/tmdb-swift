//
//  Data+ErrorContent.swift
//  TMDB
//
//  Created by Igor Camilo on 17.07.25.
//

import Foundation

extension Data {
    static let errorContent = Data(contents.utf8)
}

private let contents = """
{
  "status_code": 7,
  "status_message": "Invalid API key: You must be granted a valid key.",
  "success": false
}
"""

