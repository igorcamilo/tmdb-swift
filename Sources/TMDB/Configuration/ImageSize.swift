public protocol ImageSize<ImagePath>: RawRepresentable<String> {
  associatedtype ImagePath: RawRepresentable<String>
}
