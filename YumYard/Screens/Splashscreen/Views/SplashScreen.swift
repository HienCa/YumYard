//
//  SplashScreen.swift
//  YumYard
//
//  Created by Nguyen Van Hien on 15/5/24.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        NavigationView(content: {
            ZStack {
                ColorApp.BG_SPLASHSCREEN
                    .edgesIgnoringSafeArea(.all)
                
                VStack(content: {
                    Image(ImageName.LOGO)
                        .frame(width: 168, height: 100)
                    
                    Spacer()
                    
                    Text("Welcome to WaraChow")
                        .foregroundColor(.white)
                        .font(.system(size: 24))
                    
                    Spacer().frame(height: 16)
                    
                    Text("Order the best meals in Lagos and have them delivered to your doorstep in little or no time. Doesn’t that sound delicious???")
                        .foregroundColor(.white)
                        .padding()
                    

                    NavigationLink(destination: {
                        Home(selectedTab: .constant(0))
                    }) {
                        ZStack{
                            Capsule()
                                .frame(width: 228, height: 48)
                                .foregroundColor(.white)
                            Image(systemName: "chevron.right")
                                .frame(width: 24, height: 24)
                                .fontWeight(.semibold)
                                .foregroundColor(ColorApp.GRAY)
                        }
                    }
                })
            }
            
        })
    }
}

#Preview {
    SplashScreen()
}
