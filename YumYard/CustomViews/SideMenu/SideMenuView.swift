//
//  SideMenuView.swift
//  YumYard
//
//  Created by Nguyen Van Hien on 17/5/24.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    @Binding var selectedTab: Int
    @State private var selectedoption: SideMenuOptionModel?
    var body: some View {
        ZStack{
            if isShowing{
                Rectangle()
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShowing.toggle()
                }
                
                HStack{
                    VStack(alignment: .leading, spacing: 32, content: {
                        SideMenuHeaderView()
                        
                        VStack{
                            ForEach(SideMenuOptionModel.allCases, content: { option in
                                Button(action: {
                                    selectedoption = option
                                    selectedTab = option.tag
                                }, label: {
                                    SideMenuRowView(option: option, selectedOption: $selectedoption)
                                })
                                
                            })
                        }
                        
                        Spacer()
                    })
                    .padding()
                    .frame(width: 270, alignment: .leading)
                    .background(.white)
                    
                    Spacer()
                }
            }
        }
        .transition(.move(edge: .leading))
        .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/, value: isShowing)
    }
}

#Preview {
    SideMenuView(isShowing: .constant(true), selectedTab: .constant(0))
}

