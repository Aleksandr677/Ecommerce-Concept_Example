//
//  ProductRatingView.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-04.
//

import SwiftUI

struct ProductRatingView: View {
    //MARK: - PROPERTIES
    var rating: Int
    
    var maximumRating = 5
    
    var offImage: Image?
    var onImage = Image(systemName: "star.fill")
    
    var offColor = Color.gray
    var onColor = Color("ColorStar")
    
    //MARK: - BODY
    var body: some View {
        HStack {
            ForEach(1..<maximumRating + 1, id: \.self) { number in
                image(for: number)
                    .foregroundColor(number > rating ? offColor : onColor)
            }
        }
    }
    
    func image(for number: Int) -> Image {
        if number > rating {
            return offImage ?? onImage
        } else {
            return onImage
        }
    }
}

//MARK: - PREVIEW
struct ProductRatingView_Previews: PreviewProvider {
    
    static var previews: some View {
        ProductRatingView(rating: 4)
    }
}
