//
//  MovieDetailsView.swift
//  LiveSwiftUI
//
//  Created by Vincent on 24/12/2022.
//

import SwiftUI

struct MovieDetailsView: View {
    let movie: Movie
    @State var cast: [MovieCastMember] = []

    var body: some View {
        List {
            Section {
                HStack {
                    AsyncImage(url: movie.posterURL) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(height: 220)

                    Text(movie.overview)
                }
            }

            ForEach(cast) { cast in
                VStack(alignment: .leading) {
                    Text(cast.character)
                    Text(cast.name)
                        .font(.caption)
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle(movie.title)
        .toolbar {
            ShareLink(item: movie.posterURL!)
        }
        .task {
            do {
                let service = CastService()
                cast = try await service.getCast(of: movie)
            } catch {}
        }
    }
}

struct MovieDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MovieDetailsView(movie: .mock)
        }
    }
}
