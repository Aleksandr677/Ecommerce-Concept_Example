//
//  BestSellerView.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-03.
//

import SwiftUI

struct BestSellerView: View {
    //MARK: - PROPERTIES
    var bestSeller: BestSellerPhone
    @State var isLikePressed: Bool
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .center, spacing: 6) {
            AsyncImage(url: URL(string: bestSeller.picture!)) { image in
                image
                    .imageModifier()
            } placeholder: {
                Image(systemName: "photo.circle.fill")
                    .iconModifier()
                
                Text("Coming soon...")
                    .font(Font.custom("Mark Pro Regular", size: 9))
                    .foregroundColor(Color(.gray))
                    .lineLimit(nil)
            }
            
            VStack(alignment: .leading, spacing: 5) {
                HStack() {
                    Text("$\(bestSeller.discountPrice)")
                        .font(Font.custom("Mark Pro Bold", size: 16))
                        .foregroundColor(Color("MyBlackBlue"))
                    
                    Text("$\(bestSeller.priceWithoutDiscount)")
                        .font(Font.custom("Mark Pro Medium", size: 10))
                        .strikethrough()
                        .foregroundColor(Color(.gray))
                    
                    Spacer()
                } //HStack
                
                Text(bestSeller.title)
                    .font(Font.custom("Mark Pro Regular", size: 10))
                    .foregroundColor(Color("MyBlackBlue"))
                    .lineLimit(nil)
            } //VStack
        } //VStack
        .padding(.vertical, 10)
        .padding(.horizontal, 10)
        .background(Color.white)
        .frame(minWidth: .zero, idealWidth: 180, maxWidth: .infinity, minHeight: .zero,  idealHeight: 225, maxHeight: .infinity)
        .cornerRadius(10)
        .overlay(alignment: .topTrailing) {
            Button {
                self.isLikePressed.toggle()
            } label: {
                ZStack {
                    Circle()
                        .foregroundColor(.white)
                        .frame(width: 25, height: 25)
                    
                    Image(isLikePressed ? "ic-likeFilled" : "ic-like")
                        .resizable()
                        .frame(width: 11, height: 11)
                }
                .padding()
                .clipped()
                .shadow(color: Color("ColorTransparent"), radius: 5, x: 0, y: 0)
            } //Button
        }
    }
}

//MARK: - PREVIEW
struct BestSellerView_Previews: PreviewProvider {
    static var previews: some View {
        BestSellerView(bestSeller: BestSellerPhone(id: 1, isFavorites: true, title: "Samsung Galaxy s20 Ultra", priceWithoutDiscount: 1500, discountPrice: 1100, picture: ""), isLikePressed: true)
    }
}
