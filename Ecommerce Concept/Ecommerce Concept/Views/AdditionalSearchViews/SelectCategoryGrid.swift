//
//  SelectCategoryGrid.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-02.
//

import SwiftUI

struct SelectCategoryGrid: View {
    //MARK: - PROPERTIE
    let categories = selectCategoryData
    @State var indexItem = 0
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 23) {
                
                //First item
                Button {
                    self.indexItem = 0
                } label: {
                    VStack {
                        ZStack {
                            Circle()
                                .frame(width: 71, height: 71, alignment: .center)
                                .foregroundColor(self.indexItem == 0 ? Color("MyOrange") : Color.white)
                            
                            Image(categories[0].itemImage)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 19, height: 30, alignment: .center)
                                .foregroundColor(self.indexItem == 0 ? Color.white : Color("ImageCategory"))
                        } //ZStack
                        Text(categories[0].itemName)
                            .font(Font.custom("Mark Pro Medium", size: 12))
                            .foregroundColor(self.indexItem == 0 ? Color("MyOrange") : Color("MyBlackBlue"))
                    }
                }
                
                //Second item
                Button {
                    self.indexItem = 1
                } label: {
                    VStack {
                        ZStack {
                            Circle()
                                .frame(width: 71, height: 71, alignment: .center)
                                .foregroundColor(self.indexItem == 1 ? Color("MyOrange") : Color.white)
                            
                            Image(categories[1].itemImage)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 19, height: 30, alignment: .center)
                                .foregroundColor(self.indexItem == 1 ? Color.white : Color("ImageCategory"))
                        } //ZStack
                        Text(categories[1].itemName)
                            .font(Font.custom("Mark Pro Medium", size: 12))
                            .foregroundColor(self.indexItem == 1 ? Color("MyOrange") : Color("MyBlackBlue"))
                    }
                }

                //Third item
                Button {
                    self.indexItem = 2
                } label: {
                    VStack {
                        ZStack {
                            Circle()
                                .frame(width: 71, height: 71, alignment: .center)
                                .foregroundColor(self.indexItem == 2 ? Color("MyOrange") : Color.white)
                            
                            Image(categories[2].itemImage)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 19, height: 30, alignment: .center)
                                .foregroundColor(self.indexItem == 2 ? Color.white : Color("ImageCategory"))
                        } //ZStack
                        Text(categories[2].itemName)
                            .font(Font.custom("Mark Pro Medium", size: 12))
                            .foregroundColor(self.indexItem == 2 ? Color("MyOrange") : Color("MyBlackBlue"))
                    }
                }
                
                //Fourth item
                Button {
                    self.indexItem = 3
                } label: {
                    VStack {
                        ZStack {
                            Circle()
                                .frame(width: 71, height: 71, alignment: .center)
                                .foregroundColor(self.indexItem == 3 ? Color("MyOrange") : Color.white)
                            
                            Image(categories[3].itemImage)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 19, height: 30, alignment: .center)
                                .foregroundColor(self.indexItem == 3 ? Color.white : Color("ImageCategory"))
                        } //ZStack
                        Text(categories[3].itemName)
                            .font(Font.custom("Mark Pro Medium", size: 12))
                            .foregroundColor(self.indexItem == 3 ? Color("MyOrange") : Color("MyBlackBlue"))
                    }
                }
                
                //Fifth item
                Button {
                    self.indexItem = 4
                } label: {
                    VStack {
                        ZStack {
                            Circle()
                                .frame(width: 71, height: 71, alignment: .center)
                                .foregroundColor(self.indexItem == 4 ? Color("MyOrange") : Color.white)
                            
                            Image(categories[4].itemImage)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 19, height: 30, alignment: .center)
                                .foregroundColor(self.indexItem == 4 ? Color.white : Color("ImageCategory"))
                        } //ZStack
                        Text(categories[4].itemName)
                            .font(Font.custom("Mark Pro Medium", size: 12))
                            .foregroundColor(self.indexItem == 4 ? Color("MyOrange") : Color("MyBlackBlue"))
                    }
                }
            } //HStack
        }
    }
}

//MARK: - PREVIEW
struct SelectCategoryGrid_Previews: PreviewProvider {
    static var previews: some View {
        SelectCategoryGrid()
    }
}
