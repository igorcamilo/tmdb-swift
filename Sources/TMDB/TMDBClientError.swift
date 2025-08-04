import Foundation

public enum TMDBClientError: Error {
  case invalidURL(URLComponents)
}
