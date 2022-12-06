//
//  Modifiers.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-03.
//

import Foundation
import SwiftUI

extension Image {
    func imageModifier() -> some View {
        self
            .resizable()
    }
    
    func iconModifier() -> some View {
        self
            .imageModifier()
            .frame(minWidth: 128)
            .foregroundColor(.secondary)
            .opacity(0.5)
    }
}

extension String {
    // formatting text for price
    func currencyFormatting() -> String {
        if let value = Double(self) {
            let formatter = NumberFormatter()
            formatter.numberStyle = .currency
            formatter.maximumFractionDigits = 2
            formatter.minimumFractionDigits = 2
            if let str = formatter.string(for: value) {
                return str
            }
        }
        return ""
    }
    
    // formatting text for total price
    func currencyTotalFormatting() -> String {
        if let value = Double(self) {
            let formatter = NumberFormatter()
            formatter.numberStyle = .currencyAccounting
            formatter.maximumFractionDigits = 0
            if let str = formatter.string(for: value) {
                return str
            }
        }
        return ""
    }
}
