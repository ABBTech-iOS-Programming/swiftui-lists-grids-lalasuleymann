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
            author: "John Freeman",
            vendor: Vendor.samples[3],
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra dignissim ac ac ac. Nibh et sed ac, eget malesuada.",
            rating: 4.0,
            isSpecialOffer: true
        ),
        
        Book(
            title: "A Thousand Splendid Suns",
            price: 17.99,
            imageName: "kiterunner",
            author: "Khaled Hosseini",
            vendor: Vendor.samples[3],
            description: "A powerful story about friendship, family and hope.",
            rating: 4.5,
            isSpecialOffer: false
        ),
        
        Book(
            title: "And the Mountains Echoed",
            price: 19.99,
            imageName: "kiterunner",
            author: "Khaled Hosseini",
            vendor: Vendor.samples[3],
            description: "A moving story about family, sacrifice and the bonds between people.",
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
            title: "Everything Is F*cked",
            price: 18.99,
            imageName: "subtleartofngaf",
            author: "Mark Manson",
            vendor: Vendor.samples[0],
            description: "A book about hope, happiness and the problems of modern life.",
            rating: 4.0,
            isSpecialOffer: true
        ),
        
        Book(
            title: "Will",
            price: 21.99,
            imageName: "subtleartofngaf",
            author: "Mark Manson",
            vendor: Vendor.samples[0],
            description: "A practical guide to understanding yourself and building a better life.",
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
            title: "The Art of War: Classic Edition",
            price: 16.99,
            imageName: "artofwar",
            author: "Sun Tzu",
            vendor: Vendor.samples[0],
            description: "A classic edition of the timeless book on strategy and leadership.",
            rating: 4.5,
            isSpecialOffer: true
        ),
        
        Book(
            title: "Sun Tzu's Principles",
            price: 18.99,
            imageName: "artofwar",
            author: "Sun Tzu",
            vendor: Vendor.samples[0],
            description: "An exploration of strategy, leadership and ancient wisdom.",
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
            title: "Percy Jackson & the Olympians",
            price: 16.99,
            imageName: "trialsofapollo",
            author: "Rick Riordan",
            vendor: Vendor.samples[8],
            description: "A thrilling adventure filled with mythology, friendship and courage.",
            rating: 4.5,
            isSpecialOffer: false
        ),
        
        Book(
            title: "The Lightning Thief",
            price: 15.99,
            imageName: "trialsofapollo",
            author: "Rick Riordan",
            vendor: Vendor.samples[8],
            description: "The beginning of an unforgettable mythological adventure.",
            rating: 4.5,
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
            title: "The Humans",
            price: 17.99,
            imageName: "midnightlibrary",
            author: "Matt Haig",
            vendor: Vendor.samples[3],
            description: "A thoughtful and humorous story about what it means to be human.",
            rating: 4.0,
            isSpecialOffer: false
        ),
        
        Book(
            title: "How to Stop Time",
            price: 19.99,
            imageName: "midnightlibrary",
            author: "Matt Haig",
            vendor: Vendor.samples[3],
            description: "A story about time, love and finding meaning in life.",
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
        ),
        
        Book(
            title: "Atomic Habits Workbook",
            price: 14.99,
            imageName: "atomichabits",
            author: "James Clear",
            vendor: Vendor.samples[8],
            description: "A practical workbook for building better habits every day.",
            rating: 4.5,
            isSpecialOffer: true
        ),
        
        Book(
            title: "Habits for Success",
            price: 18.99,
            imageName: "atomichabits",
            author: "James Clear",
            vendor: Vendor.samples[8],
            description: "Simple strategies for creating positive and lasting habits.",
            rating: 4.0,
            isSpecialOffer: false
        ),
        
        
        Book(
            title: "The Rabbit Hutch",
            price: 19.99,
            imageName: "therabbithutch",
            author: "Tess Gunty",
            vendor: Vendor.samples[3],
            description: "A contemporary novel about a group of young people searching for meaning.",
            rating: 4.0,
            isSpecialOffer: true
        ),
        
        Book(
            title: "The Da Vinci Code",
            price: 19.99,
            imageName: "davincicode",
            author: "Tess Gunty",
            vendor: Vendor.samples[3],
            description: "A mysterious story filled with secrets and unexpected discoveries.",
            rating: 4.0,
            isSpecialOffer: false
        ),
        
        Book(
            title: "Carrie Fisher",
            price: 27.12,
            imageName: "carriefisher",
            author: "Tess Gunty",
            vendor: Vendor.samples[3],
            description: "A compelling literary work exploring identity and relationships.",
            rating: 4.0,
            isSpecialOffer: false
        ),
        
        Book(
            title: "The Good Sister",
            price: 27.12,
            imageName: "thegoodsister",
            author: "Tess Gunty",
            vendor: Vendor.samples[3],
            description: "A contemporary story about family and complicated relationships.",
            rating: 4.0,
            isSpecialOffer: false
        ),
        
        Book(
            title: "The Waiting",
            price: 27.12,
            imageName: "thewaiting",
            author: "Tess Gunty",
            vendor: Vendor.samples[3],
            description: "A story about life, uncertainty and finding your own way.",
            rating: 4.0,
            isSpecialOffer: true
        ),
        
        
        Book(
            title: "Hello Beautiful",
            price: 21.99,
            imageName: "hellobeautiful",
            author: "Ann Napolitano",
            vendor: Vendor.samples[3],
            description: "A deeply emotional story about family, love and belonging.",
            rating: 4.5,
            isSpecialOffer: true
        ),
        
        Book(
            title: "Dear Edward",
            price: 19.99,
            imageName: "dearedward",
            author: "Ann Napolitano",
            vendor: Vendor.samples[3],
            description: "A moving story about grief, survival and discovering life again.",
            rating: 4.0,
            isSpecialOffer: false
        ),
        
        Book(
            title: "A Good Hard Look",
            price: 18.99,
            imageName: "agoodhardlook",
            author: "Ann Napolitano",
            vendor: Vendor.samples[3],
            description: "A beautifully written story about family and human connection.",
            rating: 4.0,
            isSpecialOffer: false
        ),
        
        
        Book(
            title: "Trust",
            price: 22.99,
            imageName: "trust",
            author: "Hernan Diaz",
            vendor: Vendor.samples[8],
            description: "A sophisticated novel about wealth, power and perception.",
            rating: 4.5,
            isSpecialOffer: true
        ),
        
        Book(
            title: "In the Distance",
            price: 19.99,
            imageName: "inthedistance",
            author: "Hernan Diaz",
            vendor: Vendor.samples[8],
            description: "A literary western about loneliness, identity and survival.",
            rating: 4.0,
            isSpecialOffer: false
        ),
        
        Book(
            title: "Fortune",
            price: 21.99,
            imageName: "fortune",
            author: "Hernan Diaz",
            vendor: Vendor.samples[8],
            description: "A story exploring money, ambition and the construction of truth.",
            rating: 4.0,
            isSpecialOffer: false
        )
    ]
}
