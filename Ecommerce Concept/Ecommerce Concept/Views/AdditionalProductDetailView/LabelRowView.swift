//
//  LabelRowView.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-04.
//

import SwiftUI

struct LabelRowView: View {
    
    //MARK: - PROPERTIES
    @ObservedObject var productDetailViewModel = ProductDetailViewModel()
    
    //MARK: - BODY
    var body: some View {
        HStack() {
            VStack(alignment: .leading, spacing: 7) {
                Text(productDetailViewModel.title)
                    .font(Font.custom("Mark Pro Bold", size: 24))
                    .foregroundColor(Color("MyBlackBlue"))
                    .lineLimit(nil)
                
                ProductRatingView(rating: productDetailViewModel.rating)
            } //VStack
            
            Spacer()
            
            Button {
                
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .foregroundColor(Color("MyBlackBlue"))
                        .frame(width: 37, height: 37)
                    
                    Image(productDetailViewModel.isFavorites ? "ic-likeFilled" : "ic-like")
                        .resizable()
                        .frame(width: 14, height: 14)
                        
                }
                .padding()
                .clipped()
                .shadow(color: Color("ColorTransparent"), radius: 10, x: 0, y: 5)
            } //Button
        } //HStack
        .padding(.horizontal, 28)
        .padding(.top, 32)
    }
}

//MARK: - PREVIEW
struct LabelRowView_Previews: PreviewProvider {
    //@State static var isLikePressed: Bool = true
    
    static var previews: some View {
        LabelRowView()
    }
}
