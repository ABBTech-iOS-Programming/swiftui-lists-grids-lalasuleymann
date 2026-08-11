//
//  VendorsView.swift
//  Books app
//
//  Created by Lala Suleymanova on 10.08.26.
//

import SwiftUI

struct VendorsView: View {
    
    let vendors = Vendor.samples
    
    let categories = ["All"] + VendorCategory.allCases.map { $0.rawValue }
    
    @State private var selectedCategory = "All"
    
    var filteredVendors: [Vendor] {
        if selectedCategory == "All" {
            return vendors
        }
        
        return vendors.filter {
            $0.category.rawValue == selectedCategory
        }
    }
    
    var headerText : some View {
        VStack(alignment: .leading, spacing: 10){
            Text("Our Vendors")
                .font(.system(size: 16))
                .foregroundStyle(.secondaryText)
            
            Text("Vendors")
                .font(.system(size: 20))
                .foregroundStyle(.mainText)
        }
        .padding(.vertical, 8)
        .padding(.horizontal, 16)
    }

    var carouselCategories : some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 24) {
                ForEach(categories, id: \.self) { category in
                    Button {
                        selectedCategory = category
                    } label: {
                        VStack(spacing: 4) {
                            Text(category)
                                .font(.system(size: selectedCategory == category ? 18 : 16))
                                .foregroundStyle(selectedCategory == category ? .black: .secondaryText)

                            Rectangle()
                                .fill(selectedCategory == category ? .mainText : .clear)
                                .frame(height: 2)
                        }
                    }
                }
            }
            .padding(.vertical, 8)
            .padding(.horizontal, 16)
        }
    }
    
    var vendorsGrid : some View {
        LazyVGrid(
            columns: [
                GridItem(spacing: 12),
                GridItem(spacing: 12),
                GridItem(spacing: 12)
            ],
            spacing: 12
        ) {
            ForEach(filteredVendors) { vendor in
                VendorsCardView(vendor: vendor)
            }
        }
        .padding(.horizontal, 16)
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20){
                headerText
                carouselCategories
                vendorsGrid
            }
        }
    }
}

#Preview {
    VendorsView()
}
