//
//  ProductDetailView.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-04.
//

import SwiftUI

struct ProductDetailView: View {
    
    //MARK: - BODY
    var body: some View {
        
        VStack() {
            //HEADER
            HeaderProductDetailView()
            
            ScrollView(.vertical, showsIndicators: false) {
                
                //IMAGES
                PhoneImageDetailView()
                
                //Details
                VStack {
                    LabelRowView()
                    
                    MainSegmentedControl()
                    
                    FeatureRowView()
                    
                    SelectColorCapacityRow()
                    
                    AddCartButtonView()
                } //VStack
                .background(Color.white)
                .cornerRadius(30)
            } //Scroll
            .shadow(color: Color("ColorTransparent"), radius: 5, x: 0, y: 0)
        } //VStack
        .background(Color("Background"))
        .navigationBarBackButtonHidden()
        .toolbarBackground(Color("MyBlackBlue"), for: .tabBar)
        .onAppear() {
            UITabBar.appearance().backgroundColor = UIColor(named: "MyBlackBlue")
            UITabBar.appearance().unselectedItemTintColor = UIColor(.white)
        }
    }
}

//MARK: - PREVIEW
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
    }
}
