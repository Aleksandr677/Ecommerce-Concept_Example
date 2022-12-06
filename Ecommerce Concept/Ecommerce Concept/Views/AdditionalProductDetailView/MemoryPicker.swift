//
//  MemoryPicker.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-05.
//

import SwiftUI

struct MemoryPicker: View {
    //MARK: - PROPERTIES
    @State var selectedMemory: String?
    @ObservedObject var productDetailViewModel = ProductDetailViewModel()
    
    //MARK: - BODY
    var body: some View {
        HStack(spacing: 20) {
            ForEach(productDetailViewModel.capacity, id: \.self) { item in
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 72, height: 31)
                        .onTapGesture {
                            selectedMemory = item
                        }
                        .foregroundColor(selectedMemory == item ? Color("MyOrange") : .white)
                        
                    
                    Text(item == selectedMemory ? "\(item) GB" : "\(item) gb")
                        .font(Font.custom("Mark Pro Bold", size: 13))
                        .foregroundColor(item == selectedMemory ? .white : .gray)
                        
                } //ZStack
            } //Loop
        } //HStack
    }
}

//MARK: - PREVIEW
struct MemoryPicker_Previews: PreviewProvider {
    static var previews: some View {
        MemoryPicker(selectedMemory: "126")
    }
}
