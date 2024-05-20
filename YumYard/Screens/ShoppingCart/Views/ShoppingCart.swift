//
//  ShoppingCart.swift
//  YumYard
//
//  Created by Nguyen Van Hien on 18/5/24.
//

import SwiftUI
import SwiftUIFontIcon
struct ShoppingCart: View {
    @State var isSignIn: Bool = false
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView(content: {
            ZStack(content: {
                ColorApp.THIRD.ignoresSafeArea()
                VStack(content: {
                    header
                    items
                    bottom
                })
            })
            
        
        })
        .navigationBarBackButtonHidden(true)
    }
    
    var header: some View{
        ZStack(content: {
            HStack(content: {
                FontIcon.button(.awesome5Solid(code: .arrow_left), action: {
                    presentationMode.wrappedValue.dismiss()
                })
                .foregroundColor(ColorApp.ICON_SECOND)
                
                Spacer()
                
                NavigationLink(destination: Text(""), label: {
                    FontIcon.button(.awesome5Solid(code: .user_circle), action: {
                    })
                    .foregroundColor(ColorApp.ICON_SECOND)
                    
                })
            })
            .padding(.horizontal, 16)
        })
        .frame(width: .infinity, height: 50)

    }
    
    var items: some View{
        ScrollView(.vertical, content: {
            VStack(spacing: 16, content: {
                ForEach(0..<10, content: { item in
                    ShoppingCartItem()
                })
            })
        })
    }
    
    var bottom: some View{
        VStack(content: {
            HStack(alignment: .bottom, content: {
                VStack(alignment: .trailing, spacing: 8, content: {
                    HStack{
                        Text("Total")
                            .font(.system(size: 16))
                        
                        Spacer()
                        
                        Text("$100")
                            .font(.system(size: 14))
                    }
    
                    HStack{
                        Text("Discount")
                            .font(.system(size: 16))
                        
                        Spacer()
                        
                        Text("$100")
                            .font(.system(size: 14))
                    }
                    
                    HStack{
                        Text("VAT (%)")
                            .font(.system(size: 16))
                        
                        Spacer()
                        
                        Text("10")
                            .font(.system(size: 14))
                    }
                    
                    NavigationLink(destination: SignIn(), isActive: $isSignIn, label: {
                        MyButtonPrimary(label: "CHECK OUT", action: {
                            isSignIn.toggle()
                        })
                    })
                })
                
            })
            .padding(.horizontal)
            .padding(.vertical, 8)
            
        })
        .background(ColorApp.THIRD)
    }
}

#Preview {
    ShoppingCart()
}
