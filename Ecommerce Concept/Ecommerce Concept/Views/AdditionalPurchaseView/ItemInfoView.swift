//
//  ItemInfoView.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-06.
//

import SwiftUI

struct ItemInfoView: View {
    //MARK: - PROPERTIES
    var cartInfo: Basket
    @State var numberOfItems: Int = 1
    
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center) {
            
            ZStack(alignment: .center) {
                Color.white
                    .cornerRadius(15)
                
                AsyncImage(url: URL(string: "\(cartInfo.images)")) { image in
                    image
                        .resizable()
                        .aspectRatio(.none, contentMode: .fit)
                        .frame(width: 110, height: 90)
                    
                } placeholder: {
                    Image(systemName: "photo.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 110, height: 90)
                        .foregroundColor(.gray)
                } //Image
            }
            .frame(width: 110, height: 90)
            
            VStack(alignment: .leading, spacing: 6) {
                Text(cartInfo.title)
                    .font(Font.custom("Mark Pro Bold", size: 20))
                    .foregroundColor(Color.white)
                    .lineLimit(2)
                
                Text(String(cartInfo.price).currencyFormatting())
                    .font(Font.custom("Mark Pro Bold", size: 20))
                    .foregroundColor(Color("MyOrange"))
                    .lineLimit(nil)
            } //VStack
            .padding(.leading, 5)
            
            Spacer()
            
            ZStack(alignment: .center) {
                Rectangle()
                    .frame(width: 26, height: 78)
                    .cornerRadius(12)
                    .foregroundColor(Color("ColorStepper"))
                
                VStack(spacing: 1) {
                    Text("-")
                        .font(Font.custom("Mark Pro Bold", size: 20))
                        .foregroundColor(Color.white)
                        .lineLimit(nil)
                        .onTapGesture {
                            if numberOfItems > 1 {
                                numberOfItems -= 1
                            }
                        }
                    
                    Text(String(numberOfItems))
                        .font(Font.custom("Mark Pro Bold", size: 20))
                        .foregroundColor(Color.white)
                        .lineLimit(nil)
                    
                    Text("+")
                        .font(Font.custom("Mark Pro Bold", size: 20))
                        .foregroundColor(Color.white)
                        .lineLimit(nil)
                        .onTapGesture {
                            if numberOfItems >= 1 {
                                numberOfItems += 1
                            }
                        }
                } //VStack
                .padding(.bottom, 6)
            } //Zstack
            .padding(.leading, 30)
            
            Image("ic-trash")
                .resizable()
                .scaledToFit()
                .frame(width: 15, height: 16)
                .padding(.leading, 15)
        } //HStack
    }
}

//MARK: - PREVIEW
struct ItemInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ItemInfoView(cartInfo: Basket(id: 1, images: "", price: 123, title: "iPhone"), numberOfItems: 1)
    }
}
