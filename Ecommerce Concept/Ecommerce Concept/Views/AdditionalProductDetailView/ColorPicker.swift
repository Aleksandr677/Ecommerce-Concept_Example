//
//  ColorPicker.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-05.
//

import SwiftUI

struct ColorPicker: View {
    //MARK: - PROPERTIES
    @State var selectedColor: String?
    @ObservedObject var productDetailViewModel = ProductDetailViewModel()
    
    //MARK: - BODY
    var body: some View {
        HStack {
            ForEach(productDetailViewModel.color, id: \.self) { hex in
                ZStack {
                    Circle()
                        .foregroundColor(Color.init(hex: hex))
                        .frame(width: 40, height: 40)
                        .onTapGesture {
                            selectedColor = hex
                        }
                    
                    if hex == selectedColor {
                        Image("ic-checkMark")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 17, height: 13)
                    }
                } //ZStack
            } //Loop
        } //HStack
    }
}

//MARK: - PREVIEW
struct ColorPicker_Previews: PreviewProvider {
    static var previews: some View {
        ColorPicker(selectedColor: ("#772D03"))
    }
}
