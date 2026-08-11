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
            imageURL: "https://commons.wikimedia.org/wiki/Special:Redirect/file/John%20Freeman%202262123.jpg",
            description: "American writer and literary critic",
            category: .novelists
        ),
        
        Author(
            name: "Adam Dalva",
            imageURL: "https://commons.wikimedia.org/wiki/Special:Redirect/file/John%20Freeman%202262123.jpg",
            description: "Senior fiction editor and writer",
            category: .novelists
        ),
        
        Author(
            name: "Abraham Verghese",
            imageURL: "https://commons.wikimedia.org/wiki/Special:Redirect/file/AbrahamVerghese%28c%29BarbiReed.jpg",
            description: "Professor and author of Cutting for Stone",
            category: .novelists
        ),
        
        Author(
            name: "Tess Gunty",
            imageURL: "https://commons.wikimedia.org/wiki/Special:Redirect/file/AbrahamVerghese%28c%29BarbiReed.jpg",
            description: "Award-winning novelist from South Bend, Indiana",
            category: .novelists
        ),
        
        Author(
            name: "Ann Napolitano",
            imageURL: "https://commons.wikimedia.org/wiki/Special:Redirect/file/Hernan%20Diaz%2C%20May%202022%20%28cropped%29.jpg",
            description: "Author of Hello Beautiful and Dear Edward",
            category: .novelists
        ),
        
        Author(
            name: "Hernan Diaz",
            imageURL: "https://commons.wikimedia.org/wiki/Special:Redirect/file/Hernan%20Diaz%2C%20May%202022%20%28cropped%29.jpg",
            description: "Pulitzer Prize-winning novelist",
            category: .novelists
        )
    ]
}
