//
//  ViewModel.swift
//  LiveSwiftUI
//
//  Created by Vincent on 24/12/2022.
//

import Foundation

@MainActor
class MoviesViewModel: ObservableObject {
    enum State {
        case loading
        case loaded(movies: [Movie])
        case error(Error)
    }

    @Published var state: State = .loading

    private let service = MoviesService()

    func loadMovies() async {
        do {
            state = .loading
            let movies = try await service.getMovies()
            state = .loaded(movies: movies)
        } catch {
            state = .error(error)
        }
    }
}
