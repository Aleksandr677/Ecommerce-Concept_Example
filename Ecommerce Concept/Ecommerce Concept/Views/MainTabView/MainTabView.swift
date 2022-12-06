//
//  MainTabView.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-02.
//

import SwiftUI

struct MainTabView: View {
    //MARK: - Properties
    @State private var selection = 1
    
    //MARK: - init
    init() {
        UITabBar.appearance().backgroundColor = UIColor(named: "MyBlackBlue")
        UITabBar.appearance().unselectedItemTintColor = UIColor(.white)
    }
    
    //MARK: - Body
    var body: some View {
        NavigationView {
            TabView(selection: $selection) {
                SearchView(isFilterViewPresented: false)
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                    .onTapGesture {
                        feedback.impactOccurred()
                    }
                    .tag(1)
                
                PurchaseView(selection: $selection)
                    .tabItem {
                        Image("ic-bag")
                        Text("Purchase")
                    }
                    .onTapGesture {
                        feedback.impactOccurred()
                    }
                    .tag(2)
                
                FavoriteView()
                    .tabItem {
                        Image("ic-favorite")
                        Text("Favorite")
                    }
                    .onTapGesture {
                        feedback.impactOccurred()
                    }
                    .tag(3)
                
                UserInfoView()
                    .tabItem {
                        Image("ic-person")
                        Text("Info")
                    }
                    .onTapGesture {
                        feedback.impactOccurred()
                    }
                    .tag(4)
            } //TabView
            .toolbarColorScheme(.light, for: .tabBar)
            .accentColor(.yellow)
        } //Navigation
        .onAppear() {
            UITabBar.appearance().backgroundColor = UIColor(named: "MyBlackBlue")
            UITabBar.appearance().unselectedItemTintColor = UIColor(.white)
        }
    }
}

//MARK: - Preview
struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
