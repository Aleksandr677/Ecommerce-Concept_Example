//
//  FeatureView.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-05.
//

import SwiftUI

struct FeatureView: View {
    //MARK: - PROPERTIES
    var image: String
    var title: String
    
    //MARK: - BODY
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 28, height: 28)
            
            Text(title)
                .font(Font.custom("Mark Pro Regular", size: 11))
                .foregroundColor(.gray)
                .lineLimit(nil)
        } //VStack
    }
}

//MARK: - PREVIEW
struct FeatureView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureView(image: "ic-camera", title: "108 + 12 mp")
    }
}
