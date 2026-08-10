//
//  Author.swift
//  Books app
//
//  Created by Lala Suleymanova on 10.08.26.
//

import Foundation

struct Author: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let description: String
    let category: AuthorCategory
}

enum AuthorCategory: String, CaseIterable {
    case all = "All"
    case poets = "Poets"
    case playwrights = "Playwrights"
    case novelists = "Novelists"
    case journalists = "Journalists"
}

extension Author {
    
    static let samples: [Author] = [
        Author(
            name: "John Freeman",
            imageName: "johnFreeman",
            description: "American writer he was the editor of Granta",
            category: .novelists
        ),
        Author(
            name: "Adam Dalva",
            imageName: "adamDalva",
            description: "He is the senior fiction editor of Guernica Magazine",
            category: .novelists
        ),
        Author(
            name: "Abraham Verghese",
            imageName: "abrahamVerghese",
            description: "He is the professor on Linda R. Meier",
            category: .novelists
        ),
        Author(
            name: "Tess Gunty",
            imageName: "tessGunty",
            description: "Gunty was born and raised in South Bend, Indiana",
            category: .novelists
        ),
        Author(
            name: "Ann Napolitano",
            imageName: "annNapolitano",
            description: "She is the author of the novels A Good Hard",
            category: .novelists
        ),
        Author(
            name: "Hernan Diaz",
            imageName: "hernanDiaz",
            description: "Author and Pulitzer Prize winning novelist",
            category: .novelists
        )
    ]
}
