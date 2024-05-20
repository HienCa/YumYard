//
//  MyButtonPrimary.swift
//  YumYard
//
//  Created by Nguyen Van Hien on 18/5/24.
//

import SwiftUI

struct MyButtonPrimary: View {
    let label: String
    let action: () -> ()
    
    var body: some View {
        ZStack(content: {
            Text(label)
                .fontWeight(.semibold)
                .foregroundColor(ColorApp.SECOND)
                .padding(.horizontal, 60)
                .padding(.vertical, 16)
                
        })
        .frame(height: 50)
        .background(ColorApp.PRIMARY)
        .cornerRadius(33)
        .onTapGesture {
            action()
        }
    }
}

#Preview {
    MyButtonPrimary(label: "Button", action: {})
}
