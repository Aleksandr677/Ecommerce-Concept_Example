//
//  BestSellerGridView.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-03.
//

import SwiftUI

struct BestSellerGridView: View {
    //MARK: - PROPERTIES
    @ObservedObject var bestSellerViewModel = BestSellerViewModel()
    
    //MARK: - BODY
    var body: some View {
        LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
            ForEach(bestSellerViewModel.bestSellers, id: \.id) { item in
                BestSellerView(bestSeller: item, isLikePressed: item.isFavorites)
            } //LOOP
        } //GRID
    }
}

//MARK: - PREVIEW
struct BestSellerGridView_Previews: PreviewProvider {
    static var previews: some View {
        BestSellerGridView()
    }
}
