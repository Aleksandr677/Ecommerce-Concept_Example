//
//  DropDownFilterView.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-02.
//

import SwiftUI

struct DropDownFilterView: View {
    //MARK: - PROPERTIES
    
    let title: String
    @State var name: String
    @State var isExpanded: Bool = false
    let info: [String]
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            
            Text(title)
                .font(Font.custom("Mark Pro Medium", size: 18))
                .foregroundColor(Color("MyBlackBlue"))
            
            GroupBox() {
                
                DisclosureGroup(name, isExpanded: $isExpanded) {
                    ForEach(0 ..< info.count, id: \.self) { item in
                        Divider().padding(.vertical, 2)
                        Button {
                            name = info[item]
                            withAnimation(.easeInOut(duration: 0.75)) {
                                self.isExpanded.toggle()
                            }
                        } label: {
                            Text(info[item])
                                .foregroundColor(Color("MyBlackBlue"))
                                .font(Font.custom("Mark Pro Medium", size: 18))
                        }
                    }
                }
                .foregroundColor(Color("MyBlackBlue"))
                .accentColor(Color("MyBlackBlue"))
            }
        } //BOX
    }
}

//MARK: - PREVIEW
struct DropDownFilterView_Previews: PreviewProvider {
    static var previews: some View {
        DropDownFilterView(title: "Brand", name: "Choose your phone", info: ["iPhone", "Samsung", "Nokia"])
    }
}
