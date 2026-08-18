//
//  Author.swift
//  Books app
//
//  Created by Lala Suleymanova on 10.08.26.
//

import Foundation

struct Author: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let imageName: String
    let description: String
    let profession: String
    let category: AuthorCategory
    let rating: Double
}

enum AuthorCategory: String, CaseIterable, Hashable {
    case poets = "Poets"
    case playwrights = "Playwrights"
    case novelists = "Novelists"
    case journalists = "Journalists"
}

extension Author {
    
    static let samples: [Author] = [
        Author(
            name: "John Freeman",
            imageName: "johnfreeman",
            description: "John was born and raised in South Bend, Indiana. She graduated from the University of Notre Dame with a Bachelor of Arts in English and from New York University.",
            profession: "Writer",
            category: .journalists,
            rating: 4.0
        ),
        
        Author(
            name: "Adam Dalva",
            imageName: "adamdalva",
            description: "Adam was born and raised in South Bend, Indiana. She graduated from the University of Notre Dame with a Bachelor of Arts in English and from New York University.",
            profession: "Writer",
            category: .journalists,
            rating: 4.0
        ),
        
        Author(
            name: "Abraham Verghese",
            imageName: "abrahamverghese",
            description: "Abraham was born and raised in South Bend, Indiana. She graduated from the University of Notre Dame with a Bachelor of Arts in English and from New York University.",
            profession: "Writer",
            category: .journalists,
            rating: 4.0
        ),
        
        Author(
            name: "Tess Gunty",
            imageName: "tessgunty",
            description: "Gunty was born and raised in South Bend, Indiana. She graduated from the University of Notre Dame with a Bachelor of Arts in English and from New York University.",
            profession: "Novelist",
            category: .novelists,
            rating: 4.0
        ),
        
        Author(
            name: "Ann Napolitano",
            imageName: "annnapolitano",
            description: "Ann was born and raised in South Bend, Indiana. She graduated from the University of Notre Dame with a Bachelor of Arts in English and from New York University.",
            profession: "Novelist",
            category: .novelists,
            rating: 4.0
        ),
        
        Author(
            name: "Hernan Diaz",
            imageName: "hernandiaz",
            description: "Hernan was born and raised in South Bend, Indiana. She graduated from the University of Notre Dame with a Bachelor of Arts in English and from New York University.",
            profession: "Novelist",
            category: .novelists,
            rating: 4.0
        )
    ]
}
