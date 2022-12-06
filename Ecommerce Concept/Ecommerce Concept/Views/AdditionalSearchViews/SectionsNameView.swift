//
//  SectionsNameView.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-02.
//

import SwiftUI

struct SectionsNameView: View {
    //MARK: - PROPERTIES
    let sectionName: String
    let nameOfButton: String
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(sectionName)
                .font(Font.custom("Mark Pro Bold", size: 25))
                .foregroundColor(Color("MyBlackBlue"))
            
            Spacer()
            
            NavigationLink(destination: ProductDetailView()) {
                Text(nameOfButton)
                    .font(Font.custom("Mark Pro Regular", size: 15))
                    .foregroundColor(Color("MyOrange"))
            }
        } //HStack
    }
}

//MARK: - PREVIEW
struct SectionsNameView_Previews: PreviewProvider {
    static var previews: some View {
        SectionsNameView(sectionName: "Select Category", nameOfButton: "view all")
    }
}
