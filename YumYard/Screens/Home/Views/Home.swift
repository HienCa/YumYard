//
//  Home.swift
//  YumYard
//
//  Created by Nguyen Van Hien on 16/5/24.
//

import SwiftUI
import SwiftUIFontIcon
struct Home: View {
    @State private var showMenu: Bool = false
    @State var text = "Hello, World!"
    @State var selectedSideMenuTab = 0
    @Binding var selectedTab: Int
    
    @State var isShoppingCart: Bool = false
    
    var body: some View {
        NavigationView(content: {
            ZStack{
                ColorApp.PRIMARY.ignoresSafeArea()
                ZStack(content: {
                    VStack{
                        headerView
                        Spacer()
                        VStack{
                            ZStack{
                                ColorApp.SECOND.ignoresSafeArea()
                                
                                VStack {
                                    contentView
                                        .padding()
                                }
                            }
                        }.cornerRadius(30, corners: [.topLeft, .topRight])
                    }
                    
                    sideMenu()
                })
                
            }
            .navigationBarBackButtonHidden(true)
        })
        .navigationBarBackButtonHidden(true)
    }
    
    @ViewBuilder
    private func sideMenu() -> some View{
        SideMenuView(isShowing: $showMenu, selectedTab: $selectedTab)
    }
    
    var headerView: some View{
        VStack{
            HStack(content: {
                FontIcon.button(.awesome5Solid(code: .bars), action: {
                    showMenu.toggle()
                })
                .foregroundColor(ColorApp.ICON_WHITE)
                
                Spacer()
                
                NavigationLink(destination: ShoppingCart(), isActive: $isShoppingCart , label: {
                    Button(action: {
                        isShoppingCart.toggle()
                    }, label: {
                        ZStack(content: {
                            Circle()
                                .foregroundColor(Color.white)
                                .frame(width: 30, height: 30)
                            FontIcon.text(.awesome5Solid(code: .shopping_bag))
                                .foregroundColor(Color.black)
                        })
                    })
                })
            })
            .frame(height: 50)
            .padding(.horizontal, 16)
            .cornerRadius(8)
            
            Text("Welcome")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(ColorApp.TEXT_WHITE)
            
            Text("Homemade meals prepared with love.\nRichest ingredients.")
                .lineLimit(2)
                .foregroundColor(ColorApp.TEXT_WHITE)
                .multilineTextAlignment(.center)
            
            ZStack(content: {
                HStack(content: {
                    FontIcon.button(.awesome5Solid(code: .search), action: {
                        
                    })
                    .foregroundColor(ColorApp.ICON_SECOND)
                    
                    Text("Search menu")
                        .foregroundColor(ColorApp.TEXT_SECOND)
                })
                .padding()
                .frame(height: 40)
                .frame(minWidth: 232)
            })
            .background(ColorApp.SECOND)
            .cornerRadius(20)
            
            Spacer().frame(height: 20)
        }
    }
    
    var contentView: some View{
        VStack{
            ScrollView(.vertical, showsIndicators: false, content: {
                //Main Dishes
                RecommendFood(title: "Main Dishes")
                
                Spacer().frame(height: 20)
                //Best Sellers
                RecommendFood(title: "Best Sellers")
                
                Spacer().frame(height: 20)
                //Discounted Offers
                RecommendFood(title: "Discounted Offers")
                
                Spacer().frame(height: 20)
                //Meal Plans
                RecommendFood(title: "Meal Plans")
                
                Spacer().frame(height: 20)
                //Main Dishes
                RecommendFood(title: "Main Dishes")
            })
        }
    }
}

#Preview {
    Home(selectedTab: .constant(0))
}
