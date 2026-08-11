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
    let imageURL: String
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
            imageURL: "https://i.pravatar.cc/300?img=12",
            description: "American writer and literary critic",
            profession: "Writer",
            category: .journalists
        ),
        
        Author(
            name: "Adam Dalva",
            imageURL: "https://i.pravatar.cc/300?img=11",
            description: "Senior fiction editor and writer",
            profession: "Writer",
            category: .journalists
        ),
        
        Author(
            name: "Abraham Verghese",
            imageURL: "https://i.pravatar.cc/300?img=13",
            description: "Professor and author of Cutting for Stone",
            profession: "Writer",
            category: .journalists
        ),
        
        Author(
            name: "Tess Gunty",
            imageURL: "https://i.pravatar.cc/300?img=47",
            description: "Award-winning novelist from South Bend, Indiana",
            profession: "Novelist",
            category: .novelists
        ),
        
        Author(
            name: "Ann Napolitano",
            imageURL: "https://i.pravatar.cc/300?img=44",
            description: "Author of Hello Beautiful and Dear Edward",
            profession: "Novelist",
            category: .novelists
        ),
        
        Author(
            name: "Hernan Diaz",
            imageURL: "https://i.pravatar.cc/300?img=68",
            description: "Pulitzer Prize-winning novelist",
            profession: "Novelist",
            category: .novelists
        )
    ]
}
