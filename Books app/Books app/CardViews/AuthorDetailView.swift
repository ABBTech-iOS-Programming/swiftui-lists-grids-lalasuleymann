//
//  AuthorDetailView.swift
//  Books app
//
//  Created by Lala Suleymanova on 17.08.26.
//

import SwiftUI

struct AuthorDetailView: View {
    
    @Binding var author : Author
    
    @State private var selectedBook: Book?
    
    var authorBooks : [Book] {
        Book.samples.filter {
            $0.author == self.author.name
        }
    }
    
    var image : some View {
        VStack(alignment: .center, spacing: 8) {
            Image(author.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 120, height: 120)
                .clipShape(Circle())
            
            Text(author.profession)
                .font(.system(size: 16, weight: .regular))
        }
    }
    
    var name : some View {
        Text(author.name)
            .font(.system(size: 20, weight: .semibold))
    }
    
    var rating : some View {
        HStack(spacing: 4.67) {
            ForEach(1...5, id: \.self) { star in
                Image(systemName: "star.fill")
                    .foregroundStyle(star <= Int(author.rating) ? .yellow : .black)
            }
            Text("(\(author.rating, specifier: "%.1f"))")
                .font(.system(size: 14))
        }
    }
    
    var about : some View {
        VStack(alignment: .leading, spacing: 10){
            Text("About")
                .font(.system(size: 16, weight: .semibold))
            
            Text(author.description)
                .font(.system(size: 16, weight: .regular))
                .foregroundStyle(.secondaryText)
        }
    }
    
    var products: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Products")
                .font(.system(size: 16, weight: .semibold))
            
            if(!authorBooks.isEmpty){
                LazyVGrid(
                    columns: [
                        GridItem(.flexible(), spacing: 14),
                        GridItem(.flexible(), spacing: 14)
                    ],
                    spacing: 20
                ) {
                    ForEach(authorBooks) { book in
                        Button{
                            selectedBook = book
                        } label: {
                            VStack(alignment: .leading, spacing: 6) {
                                Image(book.imageName)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(height: 160)
                                    .frame(maxWidth: .infinity)
                                    .clipped()
                                    .clipShape(RoundedRectangle(cornerRadius: 12))
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    Text(book.title)
                                        .font(.system(size: 16, weight: .semibold))
                                        .foregroundStyle(.black)
                                        .lineLimit(1)
                                    
                                    Text("$\(book.price, specifier: "%.2f")")
                                        .font(.system(size: 14, weight: .semibold))
                                        .foregroundStyle(.mainText)
                                }
                            }
                        }                    }
                }
            } else {
                Text("No product yet")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundStyle(.secondary)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 80)
            }
        }
        .sheet(item: $selectedBook) { book in
            BookDetailView(book: .constant(book))
        }
    }
    
    
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                image
                name
                rating
                about
                products
            }
            .padding()
            .navigationTitle("Authors")
        }
    }
}

#Preview {
    @Previewable @State var author = Author.samples[3]
    AuthorDetailView(author: $author)
}
