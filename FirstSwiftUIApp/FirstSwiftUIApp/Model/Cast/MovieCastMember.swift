//
//  MovieCastMember.swift
//  LiveSwiftUI
//
//  Created by Vincent on 24/12/2022.
//

import Foundation

struct MovieCastMember: Identifiable, Equatable, Decodable {
    let id: Int
    let name: String
    let character: String
}

extension Array<MovieCastMember> {
    static var mock: [MovieCastMember] {
        [
            MovieCastMember(id: 4783, name: "Sam Neill", character: "Dr. Alan Grant"),
            MovieCastMember(id: 4784, name: "Laura Dern", character: "Dr. Ellie Sattler"),
            MovieCastMember(id: 4785, name: "Jeff Goldblum", character: "Dr. Ian Malcolm"),
            MovieCastMember(id: 73457, name: "Chris Pratt", character: "Owen Grady"),
            MovieCastMember(id: 18997, name: "Bryce Dallas Howard", character: "Claire Dearing"),
            MovieCastMember(id: 1639848, name: "Mamoudou Athie", character: "Ramsay Cole"),
            MovieCastMember(id: 1257819, name: "Daniella Pineda", character: "Zia Rodriguez"),
            MovieCastMember(id: 2058708, name: "Isabella Sermon", character: "Maisie Lockwood"),
            MovieCastMember(id: 1029934, name: "Justice Smith", character: "Franklin Webb"),
            MovieCastMember(id: 78423, name: "Omar Sy", character: "Barry Sembène"),
            MovieCastMember(id: 55152, name: "Campbell Scott", character: "Lewis Dodgson"),
            MovieCastMember(id: 14592, name: "BD Wong", character: "Dr. Henry Wu"),
            MovieCastMember(id: 543505, name: "Jake Johnson", character: "Lowery Cruthers"),
            MovieCastMember(id: 159386, name: "Kristoffer Polaha", character: "Wyatt Huntley"),
            MovieCastMember(id: 1490863, name: "Elva Trill", character: "Charlotte Lockwood"),
            MovieCastMember(id: 3107735, name: "Lillia Langley", character: "Drive in Movie Theatre Kid"),
            MovieCastMember(id: 129984, name: "Glynis Davies", character: "Carolyn O\'Hara"),
            MovieCastMember(id: 3144882, name: "Adam Kiani", character: "Security Guard"),
            MovieCastMember(id: 3144892, name: "Bastian Antonio Fuentes", character: "Ramon"),
            MovieCastMember(id: 1655621, name: "Bernardo Santos", character: "Biosyn Scientist"),
            MovieCastMember(id: 3144894, name: "Ross Donnelly", character: "Washington Pedestrian"),
            MovieCastMember(id: 3144896, name: "Manuela Mora", character: "Alicia"),
            MovieCastMember(id: 3144901, name: "Teresa Cendon-Garcia", character: "Farmer"),
            MovieCastMember(id: 3041319, name: "Metin Hassan", character: "Maltese Gangster"),
            MovieCastMember(id: 950125, name: "Cokey Falkow", character: "Hunter")
        ]
    }
}
