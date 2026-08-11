//
//  Book.swift
//  Books app
//
//  Created by Lala Suleymanova on 10.08.26.
//

import Foundation

struct Book: Identifiable {
    let id = UUID()
    let title: String
    let price: Double
    let imageURL: String
    let author: String
    let isSpecialOffer: Bool
}

extension Book {
    
    static let samples: [Book] = [
        Book(
            title: "The Kite Runner",
            price: 14.99,
            imageURL: "https://covers.openlibrary.org/b/isbn/9781594631931-L.jpg",
            author: "Khaled Hosseini",
            isSpecialOffer: true
        ),
        
        Book(
            title: "The Subtle Art of Not Giving a F*ck",
            price: 20.99,
            imageURL: "https://covers.openlibrary.org/b/isbn/9780062457714-L.jpg",
            author: "Mark Manson",
            isSpecialOffer: false
        ),
        
        Book(
            title: "The Art of War",
            price: 14.99,
            imageURL: "https://covers.openlibrary.org/b/isbn/9781590302255-L.jpg",
            author: "Sun Tzu",
            isSpecialOffer: false
        ),
        
        Book(
            title: "The Trials of Apollo",
            price: 18.99,
            imageURL: "https://covers.openlibrary.org/b/isbn/9781484747204-L.jpg",
            author: "Rick Riordan",
            isSpecialOffer: true
        ),
        
        Book(
            title: "The Midnight Library",
            price: 18.99,
            imageURL: "https://covers.openlibrary.org/b/isbn/9780525559474-L.jpg",
            author: "Matt Haig",
            isSpecialOffer: true
        ),
        
        Book(
            title: "Atomic Habits",
            price: 16.99,
            imageURL: "https://covers.openlibrary.org/b/isbn/9780735211292-L.jpg",
            author: "James Clear",
            isSpecialOffer: false
        )
    ]
}
