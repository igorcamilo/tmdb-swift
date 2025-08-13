//
//  ImagePath.swift
//  TMDB
//
//  Created by Igor Camilo on 13.08.25.
//

public protocol ImagePath: RawRepresentable<String> {
  associatedtype ImageSize: RawRepresentable<String>

  static var keyPath: KeyPath<ImageConfiguration, [ImageSize]> { get }
}
