//
//  SearchView.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-02.
//

import SwiftUI

struct SearchView: View {
    //MARK: - PROPERTIES
    @State var isFilterViewPresented: Bool
    
    //MARK: - BODY
    var body: some View {
        NavigationView() {
            VStack {
                //HEADER
                SearchViewHeader(isFilterPresented: $isFilterViewPresented)
                Spacer(minLength: 15)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    //SELECT CATEGORY
                    SectionsNameView(sectionName: "Select Category", nameOfButton: "view all")
                    SelectCategoryGrid()
                    
                    //TEXTFIELD ROW
                    Spacer(minLength: 25)
                    TextfieldRowView()
                    Spacer(minLength: 25)
                    
                    //HOT SALES
                    NavigationLink(destination: ProductDetailView()) {
                        SectionsNameView(sectionName: "Hot sales", nameOfButton: "see more")
                    }
                    
                    NavigationLink(destination: ProductDetailView()) {
                        HotSalesListView()
                    }
                    
                    //BEST SELLER
                    NavigationLink(destination: ProductDetailView()) {
                        SectionsNameView(sectionName: "Best seller", nameOfButton: "see more")
                    }
                    
                    NavigationLink(destination: ProductDetailView()) {
                        BestSellerGridView()
                    }
                    
                } //Scroll
            } //ZStack
            .padding(.vertical, 10)
            .padding(.horizontal, 17)
            .sheet(isPresented: $isFilterViewPresented) {
                FilterView()
                    .ignoresSafeArea()
                    .presentationDetents([.medium, .large])
            }
            .background(Color("Background"))
        } //Navigation
        .onAppear() {
            UITabBar.appearance().backgroundColor = UIColor(named: "MyBlackBlue")
            UITabBar.appearance().unselectedItemTintColor = UIColor.white
        }
    }
}

//MARK: - PREVIEW
struct SearchView_Previews: PreviewProvider {
    static var isFilterViewPresented: Bool = false
    static var previews: some View {
        SearchView(isFilterViewPresented: isFilterViewPresented)
    }
}
