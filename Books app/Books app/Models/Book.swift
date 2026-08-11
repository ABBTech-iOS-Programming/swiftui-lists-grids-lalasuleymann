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
    let imageName: String
    let author: String
    let isSpecialOffer: Bool
}

extension Book {
    static let samples: [Book] = [
        Book(
            title: "The Kite Runner",
            price: 14.99,
            imageName: "kiteRunner",
            author: "Khaled Hosseini",
            isSpecialOffer: false
        ),
        Book(
            title: "The Subtle Art of Not Giving a F*ck",
            price: 20.99,
            imageName: "subtleArt",
            author: "Mark Manson",
            isSpecialOffer: false
        ),
        Book(
            title: "The Art of War",
            price: 14.99,
            imageName: "artOfWar",
            author: "Sun Tzu",
            isSpecialOffer: false
        ),
        Book(
            title: "The Trials of Apollo",
            price: 18.99,
            imageName: "trialsOfApollo",
            author: "Rick Riordan",
            isSpecialOffer: true
        ),
        Book(
            title: "The Midnight Library",
            price: 18.99,
            imageName: "midnightLibrary",
            author: "Matt Haig",
            isSpecialOffer: false
        ),
        Book(
            title: "Atomic Habits",
            price: 16.99,
            imageName: "atomicHabits",
            author: "James Clear",
            isSpecialOffer: false
        )
    ]
}
