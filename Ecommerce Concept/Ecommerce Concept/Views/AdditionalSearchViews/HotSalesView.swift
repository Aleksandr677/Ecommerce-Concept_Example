//
//  HotSalesView.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-03.
//

import SwiftUI

struct HotSalesView: View {
    //MARK: - PROPERTIES
    var hotSales: HotSalesPhone
    let width = UIScreen.main.bounds.size.width
    
    //MARK: - BODY
    var body: some View {
        HStack(spacing: 10) {
            
            VStack(alignment: .leading, spacing: 15) {
                ZStack {
                    Circle()
                        .foregroundColor(Color("MyOrange"))
                        .frame(width: 27, height: 27, alignment: .center)
                    
                    Text("New")
                        .font(Font.custom("Mark Pro Bold", size: 10))
                        .foregroundColor(.white)
                } //ZStack
                .opacity(hotSales.isNew ?? true ? 1.0 : 0.0)
                
                VStack(alignment: .leading) {
                    Text(hotSales.title)
                        .font(Font.custom("Mark Pro Bold", size: 25))
                        .foregroundColor(.white)
                        .lineLimit(nil)
                    
                    Text(hotSales.subtitle)
                        .font(Font.custom("Mark Pro Regular", size: 11))
                        .foregroundColor(.white)
                        .lineLimit(nil)
                } //VStack
                
                Button {
                    //do additional work here
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 8)
                            .foregroundColor(.white)
                            .frame(width: 98, height: 23)
                        Text("Buy now!")
                            .foregroundColor(Color("MyBlackBlue"))
                            .font(Font.custom("Mark Pro Bold", size: 11))
                    } //ZStack
                } //Button
            } //VStack
            
            AsyncImage(url: URL(string: "\(hotSales.picture)")) { image in
                image
                    .imageModifier()
                    .frame(height: 120)
                
            } placeholder: {
                Image(systemName: "photo.circle.fill").iconModifier()
            }
            
                
        } //HStack
        .padding(.horizontal, 20)
        .frame(width: width, height: 145)
        .background(Color.black)
        .cornerRadius(10)
    }
}

//MARK: - PREVIEW
struct HotSalesView_Previews: PreviewProvider {
    static let url = "https://img.ibxk.com.br/2020/09/23/23104013057475.jpg?w=1120&h=420&mode=crop&scale=both"
    static var previews: some View {
        HotSalesView(hotSales: HotSalesPhone(id: 1, isNew: true, title: "iPhone 12", subtitle: "Super. Mega. Rapido", picture: url, isBuy: true))
            .previewLayout(.sizeThatFits)
    }
}

