//
//  ClientError.swift
//  TMDB
//
//  Created by Igor Camilo on 13.08.25.
//

import Foundation

public enum ClientError: Error {
  case invalidBaseURLString(String)
  case invalidURLComponents(URLComponents)
}
