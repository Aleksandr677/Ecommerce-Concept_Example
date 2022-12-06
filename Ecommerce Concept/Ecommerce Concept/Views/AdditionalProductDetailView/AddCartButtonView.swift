//
//  AddCartButtonView.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-05.
//

import SwiftUI

struct AddCartButtonView: View {
    //MARK: - PROPERTIES
    @ObservedObject var productDetailViewModel = ProductDetailViewModel()
    
    //MARK: - BODY
    var body: some View {
        Button {
            
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: UIScreen.main.bounds.size.width - 40, height: 54)
                    .foregroundColor(Color("MyOrange"))
                
                HStack(alignment: .center) {
                    Spacer()
                    
                    Text("Add to Cart")
                        .font(Font.custom("Mark Pro Bold", size: 20))
                        .foregroundColor(Color.white)
                        .lineLimit(nil)
                    
                    Spacer()
                    
                    Text(String(productDetailViewModel.price).currencyFormatting())
                        .font(Font.custom("Mark Pro Bold", size: 20))
                        .foregroundColor(Color.white)
                        .lineLimit(nil)
                    
                    Spacer()
                } //HStack
            } //ZStack
        } //Button
        .padding(.top, 27)
        .padding(.bottom, 50)

    }
}

//MARK: - PREVIEW
struct AddCartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AddCartButtonView()
    }
}
