//
//  HeaderPurchaseView.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-06.
//

import SwiftUI

struct HeaderPurchaseView: View {
    //MARK: - PROPERTIES
    @Binding var selection: Int
    
    //MARK: - BODY
    var body: some View {
        HStack {
            //Arrow button
            Button {
                selection = 1
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 37, height: 37, alignment: .center)
                    
                    Image("ic-chevronDetails")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 14, height: 14)
                        .foregroundColor(.white)
                } //ZStack
            } //Button
            .foregroundColor(Color("MyBlackBlue"))
            
            Spacer()
            
            //Buy button
            Button {
                //do something here
            } label: {
                HStack {
                    Text("Add address")
                        .font(Font.custom("Mark Pro Medium", size: 15))
                        .foregroundColor(Color("MyBlackBlue"))
                        .lineLimit(nil)
                    
                    ZStack(alignment: .center) {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 37, height: 37, alignment: .center)
                        
                        Image("ic-pointerMyCart")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 14, height: 18)
                            .foregroundColor(.white)
                    } //ZStack
                    .foregroundColor(Color("MyOrange"))
                } //HStack
            } //Button
        } //HStack
        .padding(.horizontal, 25)
        .background(Color("Background"))
    }
}

//MARK: - PREVIEW
struct HeaderPurchaseView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderPurchaseView(selection: .constant(1))
    }
}
