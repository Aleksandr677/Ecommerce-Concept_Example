//
//  PhoneImageDetailView.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-04.
//

import SwiftUI

struct PhoneImageDetailView: View {
    //MARK: - PROPERTIES
    @ObservedObject var productDetailViewModel = ProductDetailViewModel()
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(productDetailViewModel.images, id: \.self) { item in
                    AsyncImage(url: URL(string: item)) { image in
                        image
                            .resizable()
                            .padding(.vertical, 5)
                            .padding(.horizontal, 5)
                            .frame(width: 260, height: 330)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: Color("ColorTransparent"), radius: 2, x: 0, y: 4)
                    } placeholder: {
                        Image(systemName: "photo.circle.fill")
                            .iconModifier()
                            .padding(.vertical, 5)
                            .padding(.horizontal, 5)
                            .frame(width: 260, height: 330)
                        
                        Text("Coming soon...")
                            .font(Font.custom("Mark Pro Regular", size: 9))
                            .foregroundColor(Color(.gray))
                            .lineLimit(nil)
                    }
                } //LOOP
            } //HStack
            .padding(.vertical)
            .padding(.horizontal, 20)
        } //Scroll
    }
}

//MARK: - PREVIEW
struct PhoneImageDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PhoneImageDetailView()
    }
}
