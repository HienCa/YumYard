//
//  SideMenuRowView.swift
//  YumYard
//
//  Created by Nguyen Van Hien on 17/5/24.
//

import SwiftUI

struct SideMenuRowView: View {
    let option: SideMenuOptionModel
    @Binding var selectedOption: SideMenuOptionModel?
    
    private var isSelected: Bool{
        return selectedOption == option
    }
    var body: some View {
        HStack{
            option.systemImageName
            Text(option.title)
                .font(.subheadline)
            Spacer()
        }
        .padding(.leading)
        .foregroundColor(isSelected ? ColorApp.ICON_PRIMARY : .primary)
        .frame(width: 216, height: 44)
        .background(isSelected ? ColorApp.PRIMARY.opacity(0.15) : .clear)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    SideMenuRowView(option: .home, selectedOption: .constant(.home))
}
