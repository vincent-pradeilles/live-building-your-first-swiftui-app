//
//  ContentView.swift
//  LiveSwiftUI
//
//  Created by Vincent on 24/12/2022.
//

import SwiftUI

struct MoviesView: View {
    @StateObject var viewModel = MoviesViewModel()

    var body: some View {
        Group {
            switch viewModel.state {
            case .loading:
                ProgressView()
            case let .error(error):
                VStack {
                    Text(error.localizedDescription)

                    Button("Retry?") {
                        Task {
                            await viewModel.loadMovies()
                        }
                    }
                }
            case let .loaded(movies):
                list(of: movies)
            }
        }
        .navigationTitle("Upcoming Movies")
        .task {
            await viewModel.loadMovies()
        }
    }

    @ViewBuilder
    func list(of movies: [Movie]) -> some View {
        if movies.isEmpty == false {
            List(movies) { movie in
                NavigationLink {
                    MovieDetailsView(movie: movie)
                } label: {
                    HStack {
                        AsyncImage(url: movie.posterURL) { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 80)

                        VStack(alignment: .leading) {
                            Text(movie.title)
                                .font(.headline)
                            Text(movie.overview)
                                .lineLimit(4)
                        }
                    }
                }
            }
        } else {
            Text("No upcoming movies 😢")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MoviesView()
        }
        .preferredColorScheme(.dark)
    }
}
