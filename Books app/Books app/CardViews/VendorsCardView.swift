//
//  VendorsCardView.swift
//  Books app
//
//  Created by Lala Suleymanova on 10.08.26.
//

import SwiftUI
import SDWebImageSwiftUI

struct VendorsCardView: View {
    
    let vendor : Vendor
    
    var image : some View {
        WebImage(url: URL(string: vendor.imageURL))
            .resizable()
            .scaledToFit()
            .frame(maxWidth: .infinity)
            .frame(height: 101)
            .background(Color(.systemGroupedBackground))
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
    
    var title : some View {
        Text(vendor.name)
            .font(.system(size: 16, weight: .semibold))
    }
    
    var rating: some View {
        HStack(spacing: 4) {
            ForEach(1...5, id: \.self) { star in
                Image(systemName: star <= vendor.rating ? "star.fill" : "star.fill")
                    .foregroundStyle(star <= vendor.rating ? .yellow : .black)
                    .frame(width: 16, height: 16)
            }
        }
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6){
            image
            title
            rating
        }
    }
}

#Preview {
    let vendor = Vendor.samples.first!
    VendorsCardView(vendor: vendor)
}
