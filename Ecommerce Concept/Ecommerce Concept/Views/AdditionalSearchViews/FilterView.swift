//
//  FilterView.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-02.
//

import SwiftUI

struct FilterView: View {
    
    //MARK: - BODY
    var body: some View {
        
        ScrollView() {
            
            HeaderFilterView()
            
            Spacer(minLength: 35)
            
            DropDownFilterView(title: "Brand", name: "Choose your brand", info: ["iPhone", "Samsung", "Nokia"])
            
            DropDownFilterView(title: "Price", name: "Choose the price", info: ["$0 - $500", "$500 - $1000", "$1000 - $1500", "$1500 - $2000", "$2000 - $5000", "$5000 - $7500", "$7500 - $10000"])
            
            DropDownFilterView(title: "Size", name: "Choose your size", info: ["3.5 to 4.0 inches", "4.0 - 4.5 inches", "4.5 - 5.0 inches", "5.0 - 5.5 inches", "5.5 - 6.0 inches", "6.0 - 6.5 inches", "6.5 - 7.0 inches"])
            
        } //Scroll
        .padding(.horizontal, 25)
        .padding(.vertical, 25)
        .background(Color("Background"))
        .clipped()
        .shadow(color: Color("ColorTransparent"), radius: 5, x: 0, y: 0)
    }
}

//MARK: - PREVIEW
struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
            .previewLayout(.sizeThatFits)
    }
}
