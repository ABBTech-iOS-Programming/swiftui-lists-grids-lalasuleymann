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
    let profession: String
    let category: AuthorCategory
}

enum AuthorCategory: String, CaseIterable {
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
            description: "American writer and literary critic",
            profession: "Writer",
            category: .journalists
        ),
        
        Author(
            name: "Adam Dalva",
            imageName: "adamdalva",
            description: "Senior fiction editor and writer",
            profession: "Writer",
            category: .journalists
        ),
        
        Author(
            name: "Abraham Verghese",
            imageName: "abrahamverghese",
            description: "Professor and author of Cutting for Stone",
            profession: "Writer",
            category: .journalists
        ),
        
        Author(
            name: "Tess Gunty",
            imageName: "tessgunty",
            description: "Award-winning novelist from South Bend, Indiana",
            profession: "Novelist",
            category: .novelists
        ),
        
        Author(
            name: "Ann Napolitano",
            imageName: "annnapolitano",
            description: "Author of Hello Beautiful and Dear Edward",
            profession: "Novelist",
            category: .novelists
        ),
        
        Author(
            name: "Hernan Diaz",
            imageName: "hernandiaz",
            description: "Pulitzer Prize-winning novelist",
            profession: "Novelist",
            category: .novelists
        )
    ]
}
