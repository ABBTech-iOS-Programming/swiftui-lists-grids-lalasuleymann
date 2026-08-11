//
//  AuthorsCardView.swift
//  Books app
//
//  Created by Lala Suleymanova on 10.08.26.
//

import SwiftUI
import SDWebImageSwiftUI

struct AuthorsCardView: View {
    
    @Binding var author : Author
    let isMainView : Bool
    
    var image : some View {
        WebImage(url: URL(string: author.imageURL))
            .resizable()
            .scaledToFill()
            .frame(
                width: isMainView ? 68 : 102,
                height: isMainView ? 68 : 102
            )
            .clipShape(RoundedRectangle(cornerRadius: isMainView ? 30 : 100))
    }
    
    var info : some View {
        VStack(alignment: .leading){
            Text(author.name)
                .font(.system(size: isMainView ? 18 : 16, weight: .semibold))
            
            if !isMainView {
                Text(author.profession)
                    .font(.system(size: 14, weight: .medium))
                    .foregroundStyle(.secondaryText)
            }
            
            if isMainView {
                Text(author.description)
                    .font(.system(size: 14, weight: .medium))
                    .foregroundStyle(.secondaryText)
            }
        }
    }
            
    
    var body: some View {
        ScrollView {
            if isMainView {
                HStack(spacing: 12) {
                    image
                    info
                }
            }else {
                VStack(alignment: .leading, spacing: 12) {
                    image
                    info
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var author = Author.samples.first!
    AuthorsCardView(author: $author, isMainView: false)
}
