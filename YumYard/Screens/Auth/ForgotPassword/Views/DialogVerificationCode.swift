//
//  DialogVerificationCode.swift
//  YumYard
//
//  Created by Nguyen Van Hien on 18/5/24.
//

import SwiftUI

import SwiftUI

struct DialogVerificationCode: View {
    @Binding var isActive: Bool
    @State var isForward: Bool = false
    @State var emailVerificationCode: String = ""
    
    var body: some View {
        NavigationView {
            withAnimation(.spring, {
                ZStack {
                    Color.black.opacity(0.8)
                        .ignoresSafeArea(.all)
                        .onTapGesture {
                            isActive.toggle()
                        }
                    VStack(content: {
                        VStack {
                            HStack(content: {
                                Spacer()
                                
                                Button(action: {
                                    isActive.toggle()
                                }, label: {
                                    Image(systemName: "xmark")
                                        .font(.title2)
                                        .fontWeight(.medium)
                                })
                                .tint(ColorApp.ICON_SECOND)
                            })
                            
                            Text("Verification Code")
                                .font(.title)
                                .fontWeight(.medium)
                            
                            Spacer().frame(maxHeight: 40)
                            
                            MyInput(text: $emailVerificationCode, placeHolder: "Enter your verification code")
                            
                            Spacer().frame(maxHeight: 20)
                            
                            NavigationLink(destination: ForgotPassword(),isActive: $isForward, label: {
                                MyButtonPrimary(label: "Reset Password", action: {
                                    isForward.toggle()
                                })
                            })
                        }
                        .padding(16)
                        
                    })
                    .background(ColorApp.SECOND)
                    .cornerRadius(20)
                    .padding(.horizontal, 32)
                }
            })
        }
    }
}


#Preview {
    DialogVerificationCode(isActive: .constant(true))
}
