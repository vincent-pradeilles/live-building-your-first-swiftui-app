//
//  MovieCreditsResponse.swift
//  LiveSwiftUI
//
//  Created by Vincent on 24/12/2022.
//

import Foundation

struct MovieCreditsResponse: Decodable {
    let cast: [MovieCastMember]
}
