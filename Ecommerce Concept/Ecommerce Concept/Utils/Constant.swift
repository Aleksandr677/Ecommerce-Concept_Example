//
//  Constant.swift
//  Touchdown_App
//
//  Created by Христиченко Александр on 2022-10-30.
//

import SwiftUI

//LAYOUT
let rowSpacing: CGFloat = 10
let columnSpacing: CGFloat = 15
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

//UX
let feedback = UIImpactFeedbackGenerator(style: .medium)
