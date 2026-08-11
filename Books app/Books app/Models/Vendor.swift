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
    let imageURL: String
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
            imageURL: "https://commons.wikimedia.org/wiki/Special:Redirect/file/Wattpad_logo.png",
            rating: 3,
            category: .books
        ),
        Vendor(
            name: "Kuromi",
            imageURL: "https://seeklogo.com/images/K/kuromi-logo-6F9A2E0E4A-seeklogo.com.png",
            rating: 5,
            category: .specialForYou
        ),
        Vendor(
            name: "Crane & Co",
            imageURL: "https://commons.wikimedia.org/wiki/Special:Redirect/file/Crane_%26_Co._logo.svg",
            rating: 4,
            category: .stationery
        ),
        Vendor(
            name: "GooDay",
            imageURL: "https://commons.wikimedia.org/wiki/Special:Redirect/file/Gooday_logo.svg",
            rating: 4,
            category: .books
        ),
        Vendor(
            name: "Warehouse",
            imageURL: "https://logowik.com/content/uploads/images/warehouse-stationery1845.jpg",
            rating: 3,
            category: .stationery
        ),
        Vendor(
            name: "Peppa Pig",
            imageURL: "https://www.pngkit.com/png/detail/660-6604443_peppa-pig-logo-png.png",
            rating: 4,
            category: .specialForYou
        ),
        Vendor(
            name: "Jstor",
            imageURL: "https://support.jstor.org/hc/article_attachments/360012911894/jstor-logo.png",
            rating: 4,
            category: .poems
        ),
        Vendor(
            name: "Peloton",
            imageURL: "https://commons.wikimedia.org/wiki/Special:Redirect/file/Peloton_%28Unternehmen%29_logo.svg",
            rating: 4,
            category: .specialForYou
        ),
        Vendor(
            name: "Haymarket",
            imageURL: "https://commons.wikimedia.org/wiki/Special:Redirect/file/Haymarket_Media_Group_logo.svg",
            rating: 4,
            category: .books
        )
    ]
}
