//
//  UserInfoView.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-02.
//

import SwiftUI

struct UserInfoView: View {
    var body: some View {
        Text("User info")
            .onAppear() {
                UITabBar.appearance().backgroundColor = UIColor(named: "MyBlackBlue")
                UITabBar.appearance().unselectedItemTintColor = UIColor(.white)
            }
    }
}

struct UserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserInfoView()
    }
}
