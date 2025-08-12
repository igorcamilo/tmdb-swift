import Dependencies
import DependenciesMacros
import Foundation

@DependencyClient struct ConfigurationClient {
  var configuration:
    @Sendable (
      _ locale: Locale?,
      _ accessToken: String
    ) async throws -> Configuration
}

extension ConfigurationClient: DependencyKey {
  static let liveValue = ConfigurationClient(
    configuration: { locale, accessToken in
      @Dependency(\.sharedClient) var sharedClient
      return try await sharedClient.makeRequest(
        relativePath: "configuration",
        queryItems: nil,
        locale: locale,
        accessToken: accessToken
      )
    }
  )
}

extension DependencyValues {
  var configurationClient: ConfigurationClient {
    get { self[ConfigurationClient.self] }
    set { self[ConfigurationClient.self] = newValue }
  }
}
