//
//  ItemInfoRowView.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-06.
//

import SwiftUI

struct ItemInfoRowView: View {
    //MARK: - PROPERTIES
    @ObservedObject var cartViewModel = CartViewModel()
    
    //MARK: - BODY
    var body: some View {
        VStack {
            ForEach(cartViewModel.basket, id: \.id) { item  in
                ItemInfoView(cartInfo: item)
            } //Loop
        }
        .padding(.top, 35)
        .padding(.horizontal, 25)
        .background(Color("MyBlackBlue"))
    }
}

//MARK: - PREVIEW
struct ItemInfoRowView_Previews: PreviewProvider {
    static var previews: some View {
        ItemInfoRowView()
    }
}
