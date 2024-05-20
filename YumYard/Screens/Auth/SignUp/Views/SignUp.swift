//
//  SignUp.swift
//  YumYard
//
//  Created by Nguyen Van Hien on 18/5/24.
//

//
//  Signup.swift
//  YumYard
//
//  Created by Nguyen Van Hien on 16/5/24.
//

import SwiftUI

struct SignUp: View {
    @State var fullname: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var confirmPassword: String = ""
    
    @Binding var showingBottomSheet: Bool
    var body: some View {
        VStack{
            Capsule()
                .frame(width:50, height:6)
                .foregroundColor(ColorApp.PRIMARY)
            
            Text("Sign Up")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(ColorApp.PRIMARY)
            
            Spacer()
                .frame(height: 50)
            
            VStack(spacing: 16, content: {
                MyInput(text: $fullname, placeHolder: "Fullname")
                MyInput(text: $fullname, placeHolder: "Email")
                MyInput(text: $fullname, placeHolder: "Password")
                MyInput(text: $fullname, placeHolder: "Confirm password")
            })
            
            Spacer().frame(height: 30)

            
            MyButtonPrimary(label: "Never Hungry Again!", action: {
                showingBottomSheet = false
            })
            
        }
    }
}

#Preview {
    SignUp(showingBottomSheet: .constant(false))
}

