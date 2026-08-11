//
//  OffersCardView.swift
//  Books app
//
//  Created by Lala Suleymanova on 11.08.26.
//

import SwiftUI

struct OffersCardView: View {
    
    @Binding var book : Book
    
    var mainText : some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Special Offer")
                .font(.system(size: 20, weight: .bold))
            
            Text("Discount 25%")
                .font(.system(size: 14, weight: .regular))
        }
    }
    
    var offerButton : some View {
        Button {
            print("Order it!")
        } label: {
            Text("Order now")
                .foregroundStyle(.white)
                .font(.system(size: 14, weight: .semibold))
                .padding(.horizontal, 24)
                .padding(.vertical, 10)
                .background(.mainText)
                .clipShape(RoundedRectangle(cornerRadius: 40))
        }
    }
    
    var info : some View {
        VStack(alignment: .leading, spacing: 16) {
            mainText
            offerButton
        }
    }
    
    var image : some View {
        Image(book.imageName)
            .resizable()
            .scaledToFit()
            .frame(height: 145)
    }
    
    var body: some View {
        HStack(alignment: .center, spacing: 8) {
            info
            .padding()
            
            Spacer()
            
            image
        }
        .background(Color(.systemGroupedBackground))
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

#Preview {
    @Previewable @State var book = Book.samples.first!
    OffersCardView(book: $book)
}
