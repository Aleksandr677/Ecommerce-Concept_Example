//
//  PurchaseView.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-02.
//

import SwiftUI

struct PurchaseView: View {
    //MARK: - PROPERTIES
    @Binding var selection: Int
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading) {
            //HEADER
            HeaderPurchaseView(selection: $selection)
            
            Text("My Cart")
                .padding(.leading, 40)
                .padding(.top, 45)
                .font(Font.custom("Mark Pro Bold", size: 35))
                .foregroundColor(Color("MyBlackBlue"))
                .lineLimit(nil)
            
            ScrollView {
                VStack(alignment: .center) {
                    ItemInfoRowView()
                    
                    Spacer(minLength: 200)
                    
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.size.width, height: 0.5)
                        .foregroundColor(Color(red: 255, green: 255, blue: 255, opacity: 0.25))
                    
                    TotalDeliveryRowView()
                    
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.size.width, height: 0.5)
                        .foregroundColor(Color(red: 255, green: 255, blue: 255, opacity: 0.25))
                    
                    Button {
                        //do something here
                    } label: {
                        ZStack(alignment: .center) {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color("MyOrange"))
                                .frame(width: UIScreen.main.bounds.size.width - 80, height: 54)
                            
                            Text("Checkout")
                                .font(Font.custom("Mark Pro Bold", size: 20))
                                .foregroundColor(Color.white)
                        }
                    } //Button
                    .padding(.vertical, 20)
                }
            } //VStack
            .background(Color("MyBlackBlue"))
            .cornerRadius(28)
            .shadow(color: Color("ColorTransparent"), radius: 3, x: 0, y: -6)
            .ignoresSafeArea(.all)
        } //VStack
        .background(Color("Background"))
        .onAppear() {
            UITabBar.appearance().backgroundColor = UIColor(named: "MyBlackBlue")
            UITabBar.appearance().unselectedItemTintColor = UIColor(.white)
        }
    }
}

//MARK: - PREVIEW
struct PurchaseView_Previews: PreviewProvider {
    static var previews: some View {
        PurchaseView(selection: .constant(1))
    }
}
