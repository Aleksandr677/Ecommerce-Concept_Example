//
//  HotSalesListView.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-03.
//

import SwiftUI

struct HotSalesListView: View {
    //MARK: - PROPERTIES
    @ObservedObject var hotSalesViewModel = HotSalesViewModel()
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(hotSalesViewModel.hotSales, id: \.id) { item in
                    HotSalesView(hotSales: item)
                } //Loop
            } //HStack
        } //Scrollview
    }
}

//MARK: - PREVIEW
struct HotSalesListView_Previews: PreviewProvider {
    static var previews: some View {
        HotSalesListView()
    }
}
