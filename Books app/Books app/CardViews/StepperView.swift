//
//  StepperView.swift
//  Books app
//
//  Created by Lala Suleymanova on 18.08.26.
//

import SwiftUI

struct StepperView: View {
    
    @Binding var quantity : Int
    
    var stepper : some View {
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
    }
    
    var body: some View {
        stepper
    }
}

#Preview {
    @Previewable @State var quantity = 1
    StepperView(quantity: $quantity)
}
