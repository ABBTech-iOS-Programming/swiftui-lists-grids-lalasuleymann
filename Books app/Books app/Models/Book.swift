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
    let vendor: Vendor
    let description: String
    let rating: Double
    let isSpecialOffer: Bool
}

extension Book {
    
    static let samples: [Book] = [
        Book(
            title: "The Kite Runner",
            price: 14.99,
            imageName: "kiterunner",
            author: "Khaled Hosseini",
            vendor: Vendor.samples[3],
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra dignissim ac ac ac. Nibh et sed ac, eget malesuada.",
            rating: 4.0,
            isSpecialOffer: true
        ),
        
        Book(
            title: "The Subtle Art of Not Giving a F*ck",
            price: 20.99,
            imageName: "subtleartofngaf",
            author: "Mark Manson",
            vendor: Vendor.samples[0],
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra dignissim ac ac ac.",
            rating: 4.0,
            isSpecialOffer: false
        ),
        
        Book(
            title: "The Art of War",
            price: 14.99,
            imageName: "artofwar",
            author: "Sun Tzu",
            vendor: Vendor.samples[0],
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            rating: 4.0,
            isSpecialOffer: false
        ),
        
        Book(
            title: "The Trials of Apollo",
            price: 18.99,
            imageName: "trialsofapollo",
            author: "Rick Riordan",
            vendor: Vendor.samples[8],
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            rating: 4.0,
            isSpecialOffer: true
        ),
        
        Book(
            title: "The Midnight Library",
            price: 18.99,
            imageName: "midnightlibrary",
            author: "Matt Haig",
            vendor: Vendor.samples[3],
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            rating: 4.0,
            isSpecialOffer: true
        ),
        
        Book(
            title: "Atomic Habits",
            price: 16.99,
            imageName: "atomichabits",
            author: "James Clear",
            vendor: Vendor.samples[8],
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            rating: 4.0,
            isSpecialOffer: false
        )
    ]
}
