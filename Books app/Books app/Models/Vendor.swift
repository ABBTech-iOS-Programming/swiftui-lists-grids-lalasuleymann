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
    let logoName: String
    let rating: Int
}

extension Vendor {
    
    static let samples: [Vendor] = [
        Vendor(
            name: "Wattpad",
            logoName: "wattpad",
            rating: 4
        ),
        Vendor(
            name: "Kuromi",
            logoName: "kuromi",
            rating: 5
        ),
        Vendor(
            name: "Crane & Co",
            logoName: "crane",
            rating: 4
        ),
        Vendor(
            name: "GooDay",
            logoName: "gooday",
            rating: 4
        ),
        Vendor(
            name: "Warehouse",
            logoName: "warehouse",
            rating: 3
        ),
        Vendor(
            name: "Peppa Pig",
            logoName: "peppaPig",
            rating: 4
        ),
        Vendor(
            name: "Jstor",
            logoName: "jstor",
            rating: 4
        ),
        Vendor(
            name: "Peloton",
            logoName: "peloton",
            rating: 4
        ),
        Vendor(
            name: "Haymarket",
            logoName: "haymarket",
            rating: 4
        )
    ]
}
