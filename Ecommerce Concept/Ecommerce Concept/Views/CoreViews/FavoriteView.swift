//
//  FavoriteView.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-02.
//

import SwiftUI

struct FavoriteView: View {
    var body: some View {
        Text("FavoriteView")
            .onAppear() {
                UITabBar.appearance().backgroundColor = UIColor(named: "MyBlackBlue")
                UITabBar.appearance().unselectedItemTintColor = UIColor(.white)
            }
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}
