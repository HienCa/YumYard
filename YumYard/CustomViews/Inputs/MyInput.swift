//
//  MyInput.swift
//  YumYard
//
//  Created by Nguyen Van Hien on 16/5/24.
//

import SwiftUI

struct MyInput: View {
    @Binding var text: String
    var placeHolder: String

    var body: some View {
        TextField(placeHolder, text: $text)
            .frame(width: 278, height: 50)
            .background(ColorApp.INPUT_BACKGROUND)
            .accentColor(ColorApp.TEXT_SECOND)//nháy chuột khi focus
            .padding(.horizontal, 16)
            .cornerRadius(5)
            .overlay(
                RoundedRectangle(cornerRadius: 33)
                    .stroke(ColorApp.PRIMARY, lineWidth: 1.0)
                    
            )
    }
}

#Preview {
    MyInput(text: .constant(""), placeHolder: "")
}
