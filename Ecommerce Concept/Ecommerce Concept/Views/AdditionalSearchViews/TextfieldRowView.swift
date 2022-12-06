//
//  TextfieldRowView.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-03.
//

import SwiftUI

struct TextfieldRowView: View {
    //MARK: - PROPERTIES
    @State var text: String = ""
    
    //MARK: - BODY
    var body: some View {
        HStack {
            TextField("Search", text: $text)
                        .padding(9)
                        .padding(.horizontal, 35)
                        .background(Color(.white))
                        .cornerRadius(25)
                        .padding(.horizontal, 10)
                        .frame(height: 34)
                        .overlay(
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(Color("MyOrange"))
                                .frame(minWidth: 16, maxWidth: .infinity, minHeight: 16, alignment: .leading)
                                .padding(.leading, 25)
                        })
            Spacer()
            
            ZStack {
                Circle()
                    .foregroundColor(Color("MyOrange"))
                
                Image("ic-apperance")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 15, height: 15)
            } //ZStack
            .frame(width: 34, height: 34)
            
        } //HStack
    }
}

//MARK: - PREVIEW
struct TextfieldRowView_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldRowView()
    }
}
