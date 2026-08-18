//
//  HomeView.swift
//  Books app
//
//  Created by Lala Suleymanova on 09.08.26.
//

import SwiftUI

struct HomeView: View {
    
    @State private var books = Book.samples
    @State private var vendors = Vendor.samples
    @State private var authors = Author.samples
    @State private var selectedBook: Book?
    
    var offersCarousel : some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach($books.filter( {$0.wrappedValue.isSpecialOffer})){ book in
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
    
    
    var booksCarousel: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 12) {
                ForEach(books) { book in
                    Button {
                        selectedBook = book
                    } label: {
                        BooksView(book: .constant(book))
                            .foregroundStyle(.black)
                            .font(.system(size: 14))
                    }
                }
            }
        }
        .padding(.horizontal)
    }
    
    var topOfWeek : some View {
        VStack(alignment: .leading, spacing: 16) {
            SectionHeaderView(title: "Top of Week", destination: Text("No destination for this section"))
            booksCarousel
        }
        .sheet(item: $selectedBook) { selectedBook in
            if let index = books.firstIndex(where: { $0.id == selectedBook.id }) {
                BookDetailView(book: $books[index])
            }
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
            SectionHeaderView(title: "Best Vendors", destination: VendorsView(vendors: $vendors))
            vendorsCarousel
        }
    }
    
    
    
    var authorsCarousel : some View {
        ScrollView(.horizontal, showsIndicators: false){
            LazyHStack(spacing: 8) {
                ForEach($authors){ author in
                    AuthorsCardView(author: author, isMainView: false)
                }
            }
            .padding(.horizontal)
        }
    }
    
    var authorsSection : some View {
        VStack(alignment: .leading, spacing: 16) {
            SectionHeaderView(title: "Authors", destination: AuthorsView(authors: $authors))
            authorsCarousel
        }
    }
    
    
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 32) {
                    offersCarousel
                    topOfWeek
                    bestVendors
                    authorsSection
                }
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    HomeView()
}
