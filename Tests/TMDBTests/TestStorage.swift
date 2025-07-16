//
//  TestStorage.swift
//  TMDB
//
//  Created by Igor Camilo on 16.07.25.
//

actor TestStorage<T> {
    var value: T?

    func setValue(_ value: T) {
        self.value = value
    }
}
