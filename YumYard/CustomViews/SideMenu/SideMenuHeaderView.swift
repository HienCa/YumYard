//
//  SideMenuHeaderView.swift
//  YumYard
//
//  Created by Nguyen Van Hien on 17/5/24.
//

import SwiftUI

struct SideMenuHeaderView: View {
    var body: some View {
        HStack{
            Image(systemName: "person.circle.fill")
                .imageScale(.large)
                .foregroundColor(.white)
                .frame(width: 48, height: 48)
                .background(ColorApp.PRIMARY)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.vertical)
            
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Hien Ca")
                    .font(.subheadline)
                
                Text("hienca@gmail.com")
                    .font(.footnote)
                    .tint(.gray)
            })
        }
    }
}

#Preview {
    SideMenuHeaderView()
}
