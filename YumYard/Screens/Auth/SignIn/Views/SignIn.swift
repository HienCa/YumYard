//
//  SignIn.swift
//  YumYard
//
//  Created by Nguyen Van Hien on 16/5/24.
//

import SwiftUI

struct SignIn: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var showingBottomsheet: Bool = false
    @State var isSignIn: Bool = false
    
    @State var isDialogVerificationCode: Bool = false
    @State var resetPasswordEmail: String = ""

    var body: some View {
        NavigationView(content: {
            ZStack {
                VStack(content: {
                    ColorApp.BG_PRIMARY.ignoresSafeArea()
                    
                    Image(ImageName.LOGO)
                        .frame(width: 228, height: 134)
                    
                    VStack(spacing: 16, content: {
                        MyInput(text: $email, placeHolder: "Email")
                        MyInput(text: $password, placeHolder: "Password")
                        
                        Spacer().frame(height: 20)
                        
                        NavigationLink(destination: Home(selectedTab: .constant(0)), isActive: $isSignIn, label: {
                            MyButtonPrimary(label: "Eat Away!", action: {
                                isSignIn.toggle()
                                
                                var user = User()
                                user.email = email
                                user.password = password
                                
                                CacheManager.setCurrentUser(value: user, key: CacheKey.CURRENT_USER)
                                
                                print(CacheManager.getCurrentUser(key: CacheKey.CURRENT_USER))
                            })
                        })
                        
                        Text("Forgot password?")
                            .font(.footnote)
                            .onTapGesture {
                                isDialogVerificationCode.toggle()
                            }
                        
                        Spacer()
                    })
                    
                    Spacer()
                    
                    ZStack(content: {
                        ColorApp.PRIMARY
                        Text("Sign Up")
                            .font(.title3)
                            .foregroundColor(ColorApp.SECOND)
                            
                    })
                    .ignoresSafeArea()
                    .frame(height: 40)
                    .overlay(
                        RoundedRectangle(cornerRadius: 33)
                            .stroke(Color.clear, lineWidth: 0)
                            .background(Color.clear)
                            .cornerRadius(10)
                            .padding(.top, -10)
                            .padding(.leading, -10)
                            .padding(.trailing, -10)
                    )
                    .onTapGesture {
                        showingBottomsheet.toggle()
                        
                    }
                    
                })
                .sheet(isPresented: $showingBottomsheet, onDismiss: {}, content: {
                    SignUp(showingBottomSheet: $showingBottomsheet)
                })
                .navigationBarBackButtonHidden()
                
                if isDialogVerificationCode{
                    DialogVerificationCode(isActive: $isDialogVerificationCode)
                }
            }
            
        })
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    SignIn()
}
