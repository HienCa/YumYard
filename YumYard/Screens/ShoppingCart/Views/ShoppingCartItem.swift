//
//  ShoppingCartItem.swift
//  YumYard
//
//  Created by Nguyen Van Hien on 18/5/24.
//

import SwiftUI
import SwiftUIFontIcon
struct ShoppingCartItem: View {

    var body: some View {
        VStack(content: {
            HStack(alignment: .center, spacing: 16, content: {
                Image(ImageName.BAKED_JOLLOF_RICE)
                    .resizable()
                    .frame(maxWidth: 106, maxHeight: 106)
                    .cornerRadius(15, corners: .allCorners)
                
                VStack(alignment: .leading, spacing: 8, content: {
                    Text("Baked Jollof Rice")
                        .font(.system(size: 14))
                    
                    Text("$225")
                        .font(.footnote)
                        .foregroundColor(ColorApp.TEXT_SECOND)
                    
                    Text("Food description")
                        .font(.system(size: 14))
                    
                    Button(action: {
                        
                    }, label: {
                        ZStack(content: {
                            Circle()
                                .foregroundColor(Color.white)
                                .frame(width: 30, height: 30)
                            FontIcon.text(.awesome5Solid(code: .heart))
                            .foregroundColor(ColorApp.ICON_PRIMARY)
                        })
                    })
                })
                
                Spacer()
                
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 8, content: {
                    Button(action: {
                        
                    }, label: {
                        ZStack(content: {
                            RoundedRectangle(cornerRadius: 8)
                                .frame(maxWidth: 30, maxHeight: 30)
                                .foregroundColor(ColorApp.ICON_SECOND)
                            
                            FontIcon.text(.awesome5Solid(code: .minus))
                                .foregroundColor(ColorApp.ICON_WHITE)
                                
                        })
                    })
                    
                    Text("1")
                        .foregroundColor(ColorApp.TEXT_SECOND)
                        .font(.system(size: 16))
                    
                    Button(action: {
                        
                    }, label: {
                        ZStack(content: {
                            RoundedRectangle(cornerRadius: 8)
                                .frame(maxWidth: 30, maxHeight: 30)
                                .foregroundColor(ColorApp.ICON_SECOND)
                            
                            FontIcon.text(.awesome5Solid(code: .plus))
                                .foregroundColor(ColorApp.ICON_WHITE)
                                
                        })
                    })
                })
            })
            .padding()
        })
        .background(ColorApp.SECOND)
        .cornerRadius(20, corners: .allCorners)
        .padding(.horizontal)
    }

}

#Preview {
    ShoppingCartItem()
}
