import Foundation

public enum TMDBClientError: Error {
  case invalidBaseURLString(String)
  case invalidURLComponents(URLComponents)
}
