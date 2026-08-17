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
            Image(systemName: "heart.fill")
                .foregroundStyle(.mainText)
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
            HStack(spacing: 10) {
                Button{
                    if(quantity > 0){
                        quantity -= 1
                    }
                } label: {
                    Image(systemName: "minus")
                        .padding()
                        .background(Color(.systemGray4))
                        .foregroundStyle(.mainText)
                        .frame(width: 24, height: 24)
                        .clipShape(Circle())
                }
                
                Text("\(quantity)")
                    .font(.system(size: 16, weight: .semibold))
                    .frame(width: 20)
                
                Button{
                    quantity += 1
                } label: {
                    Image(systemName: "plus")
                        .padding()
                        .background(.mainText)
                        .foregroundStyle(.white)
                        .frame(width: 24, height: 24)
                        .clipShape(Circle())
                }
            }
            .padding(10)
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 8))
            
            Text(String("$\(book.price)"))
                .font(.system(size: 16, weight: .regular))
                .foregroundStyle(.mainText)
        }
        .padding(.horizontal)
    }
    
    var buttons : some View {
        HStack{
            Button {
                print("shjdbjs")
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
                print("shjdbjs")
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
