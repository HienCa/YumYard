//
//  MyDialog.swift
//  YumYard
//
//  Created by Nguyen Van Hien on 17/5/24.
//

import SwiftUI
import SwiftUIFontIcon
struct MyDialog: View {
    let title: String
    let message: String
    let buttonTitle: String
    let action: () -> ()
    @State private var offset: CGFloat = 1000
    var body: some View {
        
        ZStack(content: {
            Color.black.opacity(0.8)
                .ignoresSafeArea(.all)
                .onTapGesture {
                    action()
                }
            
            VStack{
                Text(title)
                    .font(.title2)
                    .bold()
                    .padding()
                
                Text(message)
                    .font(.body)
                
                Button(action: {}, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(ColorApp.PRIMARY)
                        
                        Text(buttonTitle)
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(ColorApp.TEXT_WHITE)
                            .padding()
                    }
                    .padding()
                })
            }
            .padding()
            .background(ColorApp.SECOND)
            .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .overlay(content: {
                VStack{
                    HStack{
                        Spacer()
                        
                        Button(action: {
                            action()
                        }, label: {
                            Image(systemName: "xmark")
                                .font(.title2)
                                .fontWeight(.medium)
                            
                        })
                        .tint(ColorApp.ICON_SECOND)
                    }
                    
                    Spacer()
                }
                .padding()
            })
            .shadow(radius: 20)
            .padding(30)
            .offset(x: 0, y: offset)
            .onAppear{
                withAnimation(.spring(), {
                    offset = 0
                })
            }
        })
    }
    
    func close(){
        withAnimation(.spring(), {
            offset = 1000
        })
    }
}

#Preview {
    MyDialog(title: "Thông báo", message: "Đây là thông báo.", buttonTitle: "Xác nhận", action: {})
}
