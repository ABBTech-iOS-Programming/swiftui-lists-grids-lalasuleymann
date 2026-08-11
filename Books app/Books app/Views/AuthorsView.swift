//
//  AuthorsView.swift
//  Books app
//
//  Created by Lala Suleymanova on 10.08.26.
//

import SwiftUI

struct AuthorsView: View {

    @Binding var authors : [Author]
    let categories = ["All"] + AuthorCategory.allCases.map { $0.rawValue }
    
    @State private var selectedCategory = "All"

    @State var searchText : String = ""
    
    var filteredAuthors: [Binding<Author>] {
        $authors.filter { author in
            let author = author.wrappedValue
            
            let matchesCategory =
                selectedCategory == "All" ||
                author.category.rawValue == selectedCategory
            
            let matchesSearch =
                searchText.isEmpty ||
                author.name.localizedCaseInsensitiveContains(searchText) ||
                author.profession.localizedCaseInsensitiveContains(searchText)
            
            return matchesCategory && matchesSearch
        }
    }
    
    var headerText : some View {
        VStack(alignment: .leading, spacing: 10){
            Text("Check the authors")
                .font(.system(size: 16))
                .foregroundStyle(.secondaryText)
            
            Text("Authors")
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
    
    var authorsGrid : some View {
        VStack(alignment: .leading,spacing: 32) {
            ForEach(filteredAuthors) { author in
                AuthorsCardView(author: author, isMainView: true)
            }
        }
        .padding(.horizontal, 16)
    }
    
    var body: some View {
        NavigationStack{
            ScrollView {
                VStack(alignment: .leading, spacing: 20){
                    headerText
                    carouselCategories
                    authorsGrid
                }
            }
            .navigationTitle("Authors")
            .navigationBarTitleDisplayMode(.inline)
            .searchable(text: $searchText)
        }
    }
}

#Preview {
    @Previewable @State var authors = Author.samples
    AuthorsView(authors: $authors)
}
