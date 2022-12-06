//
//  FilterView.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-02.
//

import SwiftUI

struct HeaderFilterView: View {
    //MARK: - Properties
    
    @Environment(\.presentationMode) var presentationMode

    //MARK: - Body
    var body: some View {
        HStack(alignment: .center) {
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image("ic-closeImage")
                    .frame(width: 37, height: 37, alignment: .center)
                    .background(Color("MyBlackBlue"))
                    .cornerRadius(9)
            }

            Spacer()
            
            Text("Filter options")
                .font(Font.custom("Mark Pro Medium", size: 18))
                .foregroundColor(Color("MyBlackBlue"))
            
            Spacer()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Done")
                    .font(Font.custom("Mark Pro Medium", size: 18))
                    .foregroundColor(Color.white)
                    .background(
                        RoundedRectangle(cornerRadius: 9, style: .continuous)
                            .frame(width: 86,height: 37)
                            .foregroundColor(Color("MyOrange"))
                    )
            }
        } //HStack
        .padding(.trailing, 20)
    }
}

//MARK: - Preview
struct HeaderFilterView_Preview: PreviewProvider {
    static var previews: some View {
        HeaderFilterView()
            .previewLayout(.sizeThatFits)
    }
}
