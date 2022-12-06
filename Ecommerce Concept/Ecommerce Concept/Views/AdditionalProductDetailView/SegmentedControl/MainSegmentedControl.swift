//
//  MainSegmentedControl.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-04.
//

import SwiftUI

struct MainSegmentedControl: View {
    @State var selectedIndex: Int = 0

    let titles: [String] =
        ["Shop", "Details", "Features"]
    
    var body: some View {
        SegmentedControlView(selectedIndex: $selectedIndex, titles: titles)
    }
}

//MARK: - PREVIEW
struct MainSegmentedControl_Preview: PreviewProvider {
    static let titles: [String] =
        ["Shop", "Details", "Features"]
    static var previews: some View {
        SegmentedControlView(selectedIndex: .constant(1), titles: titles)
    }
}
