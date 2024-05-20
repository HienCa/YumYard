//
//  RecommendFood.swift
//  YumYard
//
//  Created by Nguyen Van Hien on 16/5/24.
//

import SwiftUI
import SwiftUIFontIcon

struct RecommendFood: View {
    var title: String
    var body: some View {
        VStack(alignment: .leading){
            Text(title)
                .font(.system(size: 16))
                .fontWeight(.semibold)
                
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack(alignment: .center, spacing: 16, content: {
                    ForEach(0..<10, content: { food in
                        NavigationLink(destination: FoodDetail(), label: {
                            VStack(alignment: .leading, spacing: 8, content: {
                                Image(ImageName
                                    .FRIED_RICE)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 300, height: 200)
                                .cornerRadius(10)
                                
                                HStack(alignment: .center, content: {
                                    FontIcon.text(.awesome5Solid(code: .star))
                                        .foregroundColor(ColorApp.PRIMARY)
                                        .font(.system(size: 30))
                                    Text("335 ratings")
                                        .font(.footnote)
                                        .foregroundColor(ColorApp.TEXT_CONTENT)
                                    Text("-")
                                        .font(.footnote)
                                        .foregroundColor(ColorApp.TEXT_CONTENT)
                                    Text("Starts at:")
                                        .font(.footnote)
                                        .foregroundColor(ColorApp.TEXT_CONTENT)
                                    Text("$300")
                                        .font(.footnote)
                                        .foregroundColor(ColorApp.TEXT_PRIMARY)
                                })
                            })
                        })
                        
                    })
                })
            })
        }
        
    }
}

#Preview {
    RecommendFood(title: "Main Dishes")
}
