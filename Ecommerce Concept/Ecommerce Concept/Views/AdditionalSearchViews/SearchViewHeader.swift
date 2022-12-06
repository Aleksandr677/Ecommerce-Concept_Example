//
//  SearchViewHeader.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-02.
//

import SwiftUI

struct SearchViewHeader: View {
    //MARK: - PROPERTIES
    @Binding var isFilterPresented: Bool
    
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center) {
            
            Spacer()
            
            Image("ic-point")
                .resizable()
                .scaledToFit()
                .frame(width: 12, height: 16, alignment: .center)
            
            Text("Zihuatanejo, Gro")
                .font(.markProMedium)
            
            Image("ic-chevron")
                .resizable()
                .scaledToFit()
                .frame(width: 10, height: 5)
            
            Spacer()
            
            Button {
                self.isFilterPresented.toggle()
            } label: {
                Image("ic-filter")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 11, height: 13)
            }
        } //HStack
    }
}

//MARK: - PREVIEW
struct SearchViewHeader_Previews: PreviewProvider {
    @State static var isFilterPresented: Bool = true
    
    static var previews: some View {
        SearchViewHeader(isFilterPresented: $isFilterPresented)
            .previewLayout(.sizeThatFits)
    }
}
