//
//  MovieResponse.swift
//  LiveSwiftUI
//
//  Created by Vincent on 24/12/2022.
//

import Foundation

struct MoviesResponse: Decodable {
    let results: [Movie]
}
