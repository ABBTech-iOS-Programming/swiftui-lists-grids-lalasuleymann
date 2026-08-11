//
//  SectionHeaderView.swift
//  Books app
//
//  Created by Lala Suleymanova on 11.08.26.
//

import SwiftUI

struct SectionHeaderView: View {
    
    let title: String
    
    var body: some View {
        HStack(){
            Text(title)
                .font(.system(size: 18, weight: .semibold))
            
            Spacer()
            
            Button {
                print(title)
            } label: {
                Text("See all")
                    .font(.system(size: 14, weight: .bold))
                    .foregroundStyle(.mainText)
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    SectionHeaderView(title: "Top of Week")
}
