//
//  VerificationCode.swift
//  YumYard
//
//  Created by Nguyen Van Hien on 18/5/24.
//

//
//  MyDialog.swift
//  YumYard
//
//  Created by Nguyen Van Hien on 17/5/24.
//

import SwiftUI
import SwiftUIFontIcon
struct VerificationCode: View {
   
    @State private var offset: CGFloat = 1000
    @State private var verificationCode: String = ""
    var body: some View {
        
        ZStack(content: {
            Color.black.opacity(0.8)
                .ignoresSafeArea(.all)
                .onTapGesture {
                   close()
                }
            
            VStack{
                Text("Verification Code")
                    .font(.title2)
                    .bold()
                    .padding()
                
                Text("A verification code has been sent to your mail.")
                    .font(.body)
                    .foregroundColor(ColorApp.TEXT_SECOND)
                
                Spacer().frame(height: 30)
                
                MyInput(text: $verificationCode, placeHolder: "Verification code")
                
                Spacer().frame(height: 20)
                
                MyButtonPrimary(label: "Reset password", action: {})
                
                Spacer().frame(height: 20)
                
                Text("Change Email")
                    .foregroundColor(ColorApp.TEXT_PRIMARY)
                    .font(.footnote)
                    .underline()
                    .italic()
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
                            close()
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
    VerificationCode()
}

