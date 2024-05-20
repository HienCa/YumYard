//
//  ForgotPassword.swift
//  YumYard
//
//  Created by Nguyen Van Hien on 18/5/24.
//

import SwiftUI

struct ForgotPassword: View {
    @State var newPassword: String = ""
    @State var confirmNewPassword: String = ""
    @State private var showSignIn = false
    var body: some View {
        NavigationView(content: {
            ZStack(content: {
                ColorApp.BG_PRIMARY
                    .ignoresSafeArea()
                VStack(content: {
                    Image(ImageName.LOGO)
                        .resizable()
                        .frame(maxWidth: 228, maxHeight: 134)
                    Text("Your password must be \nat-least 8 characters long.")
                        .frame(maxWidth: 226, maxHeight: 55)
                        .multilineTextAlignment(.center)
                        .font(.system(size: 18))
                    
                    Spacer().frame(maxHeight: 50)
                    
                    VStack(spacing: 16, content: {
                        MyInput(text: $newPassword, placeHolder: "Enter new password")
                        MyInput(text: $confirmNewPassword, placeHolder: "Reconfirm new password")
                    })
                    
                    Spacer().frame(maxHeight: 20)
                
                    NavigationLink(destination: SignIn(), isActive: $showSignIn) {
                        MyButtonPrimary(label: "Eat Away!") {
                            showSignIn = true
                        }
                    }
                    
                    Spacer()
                })
            })
            
        })
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    ForgotPassword()
}
