//
//  BooksView.swift
//  Books app
//
//  Created by Lala Suleymanova on 11.08.26.
//

import SwiftUI
import SDWebImageSwiftUI
struct BooksView: View {
    
    let book : Book
    
    var image : some View {
        WebImage(url: URL(string: book.imageURL))
            .resizable()
            .scaledToFill()
            .frame(width: 128, height: 170)
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
    
    var info : some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(book.title)
                .font(.system(size: 14, weight: .semibold))
                .lineLimit(1)
            
            Text("$ \(book.price.formatted())")
                .font(.system(size: 12, weight: .medium))
                .foregroundStyle(.mainText)
        }
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            image
            info
        }
        .frame(width: 128, alignment: .leading)
    }
}

#Preview {
    let book = Book.samples.first!
    BooksView(book: book)
}
