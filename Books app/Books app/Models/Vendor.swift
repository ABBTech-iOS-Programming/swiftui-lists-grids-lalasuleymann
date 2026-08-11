//
//  Vendor.swift
//  Books app
//
//  Created by Lala Suleymanova on 10.08.26.
//

import Foundation

struct Vendor: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let rating: Int
    let category: VendorCategory
}

enum VendorCategory: String, CaseIterable {
    case books = "Books"
    case poems = "Poems"
    case specialForYou = "Special for you"
    case stationery = "Stationery"
}

extension Vendor {

    static let samples: [Vendor] = [
        Vendor(
            name: "Wattpad",
            imageName: "wattpad",
            rating: 3,
            category: .books
        ),
        Vendor(
            name: "Kuromi",
            imageName: "kuromi",
            rating: 5,
            category: .specialForYou
        ),
        Vendor(
            name: "Crane & Co",
            imageName: "craneco",
            rating: 4,
            category: .stationery
        ),
        Vendor(
            name: "GooDay",
            imageName: "gooday",
            rating: 4,
            category: .books
        ),
        Vendor(
            name: "Warehouse",
            imageName: "warehouse",
            rating: 3,
            category: .stationery
        ),
        Vendor(
            name: "Peppa Pig",
            imageName: "peppapig",
            rating: 4,
            category: .specialForYou
        ),
        Vendor(
            name: "Jstor",
            imageName: "jstor",
            rating: 4,
            category: .poems
        ),
        Vendor(
            name: "Peloton",
            imageName: "peloton",
            rating: 4,
            category: .specialForYou
        ),
        Vendor(
            name: "Haymarket",
            imageName: "haymarket",
            rating: 4,
            category: .books
        )
    ]
}
