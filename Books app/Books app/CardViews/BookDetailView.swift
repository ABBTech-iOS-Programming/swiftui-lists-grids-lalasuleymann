//
//  BookDetailView.swift
//  Books app
//
//  Created by Lala Suleymanova on 17.08.26.
//

import SwiftUI

struct BookDetailView: View {
    
    @Binding var book : Book
    
    @State private var quantity = 1
    @State var isFavorite : Bool = false
    @Environment(\.dismiss) private var dismiss
    
    var image : some View {
        Image(book.imageName)
            .resizable()
            .scaledToFill()
            .frame(width: 240, height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 16))
    }
    
    var title : some View {
        HStack{
            Text(book.title)
                .font(.system(size: 20, weight: .semibold))
            
            Spacer()
            
            Button {
                isFavorite.toggle()
            } label: {
                Image(systemName: isFavorite ? "heart.fill" : "heart")
                    .foregroundStyle(.mainText)
            }
            .buttonStyle(.plain)
        }
    }
    
    var vendor : some View {
        HStack {
            Image(book.vendor.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 30)
            Spacer()
        }
    }
    
    var description : some View {
        Text(book.description)
            .font(.system(size: 14))
            .foregroundStyle(.secondaryText)
            .lineSpacing(4)
    }
    
    
    
    var info : some View {
        VStack(spacing: 12){
            title
            vendor
            description
        }
        .padding()
    }
    
    var review : some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Review")
                .font(.system(size: 18, weight: .bold))
            
            HStack(spacing: 4) {
                ForEach(1...5, id: \.self) { star in
                    Image(systemName: "star.fill")
                        .foregroundStyle(star <= Int(book.rating) ? .yellow : .black)
                }
                Text("(\(book.rating, specifier: "%.1f"))")
                    .font(.system(size: 14))
            }
        }
        .padding(.horizontal)
    }
    
    var stepper : some View {
        HStack(spacing: 16) {
            StepperView(quantity: $quantity)
            
            Text(String("$\(book.price * Double(quantity))"))
                .font(.system(size: 16, weight: .regular))
                .foregroundStyle(.mainText)
        }
        .padding(.horizontal)
    }
    
    var buttons : some View {
        HStack{
            Button {
                dismiss()
            } label: {
                Text("Continue shopping")
                    .font(.system(size: 16, weight: .semibold))
                    .padding()
                    .padding(.horizontal)
                    .background(.mainText)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 48))
            }
            
            Spacer()
            
            Button {
                print("View cart")
            } label: {
                Text("View cart")
                    .font(.system(size: 16, weight: .semibold))
                    .padding()
                    .background(Color(.systemGray6))
                    .foregroundStyle(.mainText)
                    .clipShape(RoundedRectangle(cornerRadius: 48))
            }
        }
        .padding()
    }
    
    
    var body: some View {
        ScrollView{
            VStack(spacing: 16){
                Spacer()
                image
                VStack(alignment: .leading, spacing: 24){
                    info
                    review
                    stepper
                    buttons
                }
                .padding()
            }
        }
    }
}

#Preview {
    @Previewable @State var book = Book.samples[0]
    BookDetailView(book: $book)
}
