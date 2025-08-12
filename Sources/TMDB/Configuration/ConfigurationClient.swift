import Dependencies
import DependenciesMacros
import Foundation

@DependencyClient public struct ConfigurationClient: Sendable {
  var details:
    @Sendable (
      _ accessToken: String
    ) async throws -> ConfigurationDetails
}

extension ConfigurationClient: DependencyKey {
  public static let liveValue = ConfigurationClient(
    details: { accessToken in
      @Dependency(\.sharedClient) var sharedClient
      return try await sharedClient.fetch(
        relativePath: "configuration",
        queryItems: nil,
        locale: nil,
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
