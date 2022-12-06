//
//  SelectColorCapacityRow.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-05.
//

import SwiftUI

struct SelectColorCapacityRow: View {
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text("Select color and capacity")
                .font(Font.custom("Mark Pro Bold", size: 16))
                .lineLimit(nil)
            
            HStack(spacing: 60) {
                ColorPicker()
                
                MemoryPicker()
            } //HStack
        } //VStack
        .padding(.top, 25)
    }
}

//MARK: - PREVIEW
struct SelectColorCapacityRow_Previews: PreviewProvider {
    static var previews: some View {
        SelectColorCapacityRow()
    }
}
