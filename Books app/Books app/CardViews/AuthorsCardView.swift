//
//  AuthorsCardView.swift
//  Books app
//
//  Created by Lala Suleymanova on 10.08.26.
//

import SwiftUI
import SDWebImageSwiftUI

struct AuthorsCardView: View {
    
    let author : Author
    
    var image : some View {
        WebImage(url: URL(string: author.imageURL))
            .resizable()
            .scaledToFill()
            .frame(width: 68,height: 68)
            .clipShape(RoundedRectangle(cornerRadius: 30))
    }
    
    var info : some View {
        VStack(alignment: .leading){
            Text(author.name)
                .font(.system(size: 18, weight: .semibold))
            
            Text(author.description)
                .font(.system(size: 14, weight: .medium))
                .foregroundStyle(.secondaryText)
//                .lineLimit(.max)
        }
    }
            
    
    var body: some View {
        ScrollView {
            HStack(spacing: 12) {
                image
                info
            }
        }
    }
}

#Preview {
    let author = Author.samples.first!
    AuthorsCardView(author: author)
}
