//
//  FeatureRowView.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-05.
//

import SwiftUI

struct FeatureRowView: View {
    //MARK: - PROPERTIES
    @ObservedObject var productDetailViewModel = ProductDetailViewModel()
    
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 45) {
            FeatureView(image: "ic-chip", title: productDetailViewModel.CPU)
            
            FeatureView(image: "ic-camera", title: productDetailViewModel.camera)
            
            FeatureView(image: "ic-RAM", title: productDetailViewModel.ssd)
            
            FeatureView(image: "ic-memory", title: productDetailViewModel.sd)
        } //HStack
        .padding(.top, 30)
    }
}

//MARK: - PREVIEW
struct FeatureRowView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureRowView()
    }
}
