public protocol ImagePath: RawRepresentable<String> {
  associatedtype ImageSize: RawRepresentable<String>

  static var keyPath: KeyPath<Images, [ImageSize]> { get }
}
