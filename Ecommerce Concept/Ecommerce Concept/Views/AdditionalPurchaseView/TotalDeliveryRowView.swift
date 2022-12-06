//
//  TotalDeliveryRowView.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-06.
//

import SwiftUI

struct TotalDeliveryRowView: View {
    //MARK: - PROPERTIES
    @ObservedObject var cartViewModel = CartViewModel()
    
    //MARK: - BODY
    var body: some View {
        
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 12) {
                    Text("Total")
                        .font(Font.custom("Mark Pro Regular", size: 15))
                        .foregroundColor(Color.white)
                    
                    Text("Delivery")
                        .font(Font.custom("Mark Pro Regular", size: 15))
                        .foregroundColor(Color.white)
                    
                    
                } //VStack
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 12) {
                    
                    Text(String(cartViewModel.total).currencyTotalFormatting())
                        .font(Font.custom("Mark Pro Bold", size: 15))
                        .foregroundColor(Color.white)
                    
                    Text(cartViewModel.delivery)
                        .font(Font.custom("Mark Pro Bold", size: 15))
                        .foregroundColor(Color.white)
                } //VStack
                
            } //HStack
        }
        .background(Color("MyBlackBlue"))
        .padding(.horizontal, 50)
        
    }
}

//MARK: - PREVIEW
struct TotalDeliveryRowView_Previews: PreviewProvider {
    static var previews: some View {
        TotalDeliveryRowView()
    }
}
