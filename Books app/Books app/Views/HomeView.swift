//
//  HomeView.swift
//  Books app
//
//  Created by Lala Suleymanova on 09.08.26.
//

import SwiftUI

struct HomeView: View {
    
    let books = Book.samples
    let vendors = Vendor.samples
    let authors = Author.samples
    
    var offersCarousel : some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(books.filter( {$0.isSpecialOffer})){ book in
                    OffersCardView(book: book)
                        .containerRelativeFrame(
                            .horizontal,
                            count: 1,
                            spacing: 32
                        )
                }
            }

            .scrollTargetLayout()
        }
        .padding()
        .scrollTargetBehavior(.viewAligned)
    }
    
    
    var booksCarousel : some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 12){
                ForEach(books){ book in
                    BooksView(book: book)
                }
            }
        }
        .padding(.horizontal)
    }
    
    var topOfWeek : some View {
        VStack(alignment: .leading, spacing: 16) {
            SectionHeaderView(title: "Top of Week")
            booksCarousel
        }
    }
    
    
    
    var vendorsCarousel : some View {
        ScrollView(.horizontal, showsIndicators: false){
            LazyHStack(spacing: 8) {
                ForEach(vendors){ vendor in
                    VendorsCardView(vendor: vendor, isMainView: false)
                }
            }
            .padding(.horizontal)
        }
    }
    
    var bestVendors : some View {
        VStack(alignment: .leading, spacing: 16) {
            SectionHeaderView(title: "Best Vendors")
            vendorsCarousel
        }
    }
    
    
    
    var authorsCarousel : some View {
        ScrollView(.horizontal, showsIndicators: false){
            LazyHStack(spacing: 8) {
                ForEach(authors){ author in
                    AuthorsCardView(author: author, isMainView: false)
                }
            }
            .padding(.horizontal)
        }
    }
    
    var authorsSection : some View {
        VStack(alignment: .leading, spacing: 16) {
            SectionHeaderView(title: "Authors")
            authorsCarousel
        }
    }
    
    
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 32) {
                offersCarousel
                topOfWeek
                bestVendors
                authorsSection
            }
        }
    }
}

#Preview {
    HomeView()
}
