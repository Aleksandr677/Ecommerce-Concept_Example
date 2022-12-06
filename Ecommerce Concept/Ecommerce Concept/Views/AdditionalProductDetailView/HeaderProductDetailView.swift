//
//  HeaderProductDetailView.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-04.
//

import SwiftUI

struct HeaderProductDetailView: View {
    
    //MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    //MARK: - BODY
    var body: some View {
        HStack {
            //Arrow button
            Button {
                self.presentationMode.wrappedValue.dismiss()
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
            
            //Title
            Text("Product Details")
                .font(Font.custom("Mark Pro Medium", size: 18))
                .lineLimit(nil)
            
            Spacer()
            
            //Buy button
            Button {
                
            } label: {
                ZStack(alignment: .center) {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 37, height: 37, alignment: .center)
                    
                    Image("ic-bagDetails")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 14, height: 14)
                        .foregroundColor(.white)
                } //ZStack
            } //Button
            .foregroundColor(Color("MyOrange"))
        } //HStack
        .padding(.horizontal, 25)
        .background(Color("Background"))
    }
}

//MARK: - PREVIEW
struct HeaderProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderProductDetailView()
    }
}
