//
//  FoodDetail.swift
//  YumYard
//
//  Created by Nguyen Van Hien on 16/5/24.
//

import SwiftUI
import SwiftUIFontIcon
struct FoodDetail: View {
    @State var isHeart: Bool = false
    @State var current_quantity: Int = 1
    @State var isActive: Bool = false
    @State var isShowDialog: Bool = false
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        
        ZStack{
            ScrollView(.vertical, content: {
                VStack(content: {
                    headerView
                    
                    ZStack(alignment: .top , content: {
                        content
                        
                        HStack(alignment: .center, content: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 32)
                                    .stroke(Color.clear, lineWidth: 0)
                                    .background(ColorApp.SECOND)
                                    .frame(width: 200, height: 50)
                                    .clipShape(.capsule)
                                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                
                                HStack(content: {
                                    HStack(spacing: 0){
                                        Circle()
                                            .frame(width: 30, height: 30)
                                            .overlay(
                                                Image(ImageName.BAKED_JOLLOF_RICE)
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width: 30, height: 30)
                                                    .clipShape(Circle())
                                                    
                                            )
                                        Circle()
                                            .frame(width: 30, height: 30)
                                        
                                            .overlay(
                                                Image(ImageName.BAKED_JOLLOF_RICE)
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width: 30, height: 30)
                                                    .clipShape(Circle())
                                                    
                                            )
                                    }
                                    .padding()
                                    
                                    Spacer()
                                    
                                    HStack(content: {
                                        Text("4.5")
                                            .fontWeight(.semibold)
                                            .font(.system(size: 24))
                                            .foregroundColor(ColorApp.GRAY)
                                        FontIcon.text(.awesome5Solid(code: .star))
                                            .foregroundColor(ColorApp.ICON_PRIMARY)
                                    })
                                    .padding()
                                })
                                .frame(width: 200, height: 50)

                            }
                            
                            Spacer()
                            
                            HStack{
                                Circle()
                                    .frame(width: 40, height: 40)
                                    .overlay(
                                        ZStack(content: {
                                            FontIcon.button(.awesome5Solid(code: .heart), action: {
                                                isHeart = !isHeart
                                            })
                                            .foregroundColor(isHeart ? ColorApp.ICON_PRIMARY
                                                             : ColorApp.ICON_WHITE)
                                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                            
                                            RoundedRectangle(cornerRadius: 20)
                                                .stroke(ColorApp.ICON_PRIMARY, lineWidth: 1)
                                        })

                                    )
                                    .padding()
                                    .shadow(radius: 1)
                                    .foregroundColor(ColorApp.ICON_WHITE)

                            }

                        })
                        .padding(.top, -40)
                        .padding(.leading, 20)
                    })
                    

                })
            })

            if isShowDialog{
                MyDialog(title: "Thông báo!", message: "Số lượng đã đạt tối thiểu.", buttonTitle: "Xác nhận", action: {
                    isShowDialog = false
                })
            }
        }
        .navigationBarBackButtonHidden(true)
        
    }
    
    var headerView: some View{
        ZStack(content: {
            Image(ImageName.BAKED_JOLLOF_RICE)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 500)
                .padding(.top, -50)
            
            VStack {
                HStack(alignment: .center, content: {
                    FontIcon.button(.awesome5Solid(code: .arrow_left), action: {
                        presentationMode.wrappedValue.dismiss()
                    })
                    .foregroundColor(ColorApp.ICON_WHITE)
                    
                    Spacer()
                    
                    RoundedRectangle(cornerRadius: 19)
                        .stroke(ColorApp.SECOND, lineWidth: 2)
                                .frame(width: 150, height: 38)
                                .fontWeight(.bold)
                         
                                .overlay(
                                    Text("Fried Rice")
                                        .foregroundColor(.white)
                                        .font(.headline)
                                )

                })
                .padding(.horizontal, 20)
                
                Spacer()
            }

        })
    }
    
    var content: some View{
        VStack(alignment: .leading){
            
            VStack(alignment: .leading, spacing: 20){
                HStack(spacing: 30){
                    VStack(alignment: .leading, spacing: 16){
                        Text("Description")
                            .font(.system(size: 24))
                            .fontWeight(.semibold)

                        Text("Our fried rice is made from the finest ingredients and veggies.\nEvery single dish is made with fresh vegetables.\nEach plate is served with our signature chicken and a free")
                            .font(.system(size: 14 ))
                            .italic()
                    }
                    
                    VStack(alignment: .trailing, spacing: 20, content: {
                        VStack(alignment: .trailing, content: {
                            Text("Latest Reviews")
                               .fontWeight(.semibold)
                            RoundedRectangle(cornerRadius: 0)
                               .frame(height: 0.5)
                               .opacity(0.5)
                        })
                        
                        VStack(alignment: .trailing, content: {
                            HStack(spacing: 4, content: {
                                FontIcon.text(.awesome5Solid(code: .star)).foregroundColor(ColorApp.ICON_PRIMARY)
                                FontIcon.text(.awesome5Solid(code: .star)).foregroundColor(ColorApp.ICON_PRIMARY)
                                FontIcon.text(.awesome5Solid(code: .star)).foregroundColor(ColorApp.ICON_PRIMARY)
                            })
                            
                            Text("Sarah Ofila")
                               .fontWeight(.semibold)
                               
                            Text("Great Meal but delivery was a bit late")
                               .fontWeight(.regular)
                               .font(.system(size: 12))
                            
                            Text("3mins ago")
                               .fontWeight(.regular)
                               .font(.system(size: 10))
                            
                            RoundedRectangle(cornerRadius: 0)
                               .frame(height: 0.5)
                               .opacity(0.5)
                        })
                        
                        
                        VStack(alignment: .trailing, content: {
                            HStack(spacing: 4, content: {
                                FontIcon.text(.awesome5Solid(code: .star)).foregroundColor(ColorApp.ICON_PRIMARY)
                                FontIcon.text(.awesome5Solid(code: .star)).foregroundColor(ColorApp.ICON_PRIMARY)
                                FontIcon.text(.awesome5Solid(code: .star)).foregroundColor(ColorApp.ICON_PRIMARY)
                                FontIcon.text(.awesome5Solid(code: .star)).foregroundColor(ColorApp.ICON_PRIMARY)
                                FontIcon.text(.awesome5Solid(code: .star)).foregroundColor(ColorApp.ICON_PRIMARY)
                            })
                            
                            Text("James Atite")
                               .fontWeight(.semibold)
                               
                            Text("Awesome as always!!!")
                               .fontWeight(.regular)
                               .font(.system(size: 12))
                            
                            Text("10mins ago")
                               .fontWeight(.regular)
                               .font(.system(size: 10))
                            
                            RoundedRectangle(cornerRadius: 0)
                               .frame(height: 0.5)
                               .opacity(0.5)
                        })
                        
                    })
                }
                
                VStack(alignment: .leading, spacing: 16){
                    Text("Ingredients")
                        .font(.system(size: 24))
                        .fontWeight(.semibold)

                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack(spacing: 8, content: {
                            ForEach(0..<20, content: { image in
                                Image(ImageName.FOOD_DEFAULT)
                                    .resizable()
                                    .frame(width: 100, height: 60)
                                    .cornerRadius(10)
                                
                            })
                        })
                    })
                }
                
                VStack(alignment: .leading, spacing: 16){
                    Text("Additions")
                        .font(.system(size: 24))
                        .fontWeight(.semibold)

                    ZStack(content: {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(ColorApp.PRIMARY, lineWidth: 1)
                            .frame(height: 40)
                        HStack(content: {
                            Text("Meat")
                                .font(.body)
                            Spacer()
                            FontIcon.button(.awesome5Solid(code: .chevron_down), action: {
                                
                            })
                            .foregroundColor(ColorApp.PRIMARY)
                        })
                        .padding()
                        
                        
                    })
                    
                    ZStack(content: {
                        RoundedRectangle(cornerRadius: 28)
                                        .stroke(Color.clear, lineWidth: 0)
                                        .background(ColorApp.PRIMARY)
                                        .clipShape(RoundedRectangle(cornerRadius: 28))
                                        .frame(height: 68)
                        
                         HStack(content: {
                            Text("$500")
                                .foregroundColor(ColorApp.TEXT_WHITE)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            
                            Spacer()
                            
                            ZStack(content: {
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(ColorApp.SECOND, lineWidth: 1)
                                HStack(spacing: 32, content: {
                                    FontIcon.button(.awesome5Solid(code: .minus), action: {
                                        if current_quantity == 1{
                                            isShowDialog = true
                                        }
                                        if current_quantity > 1{
                                            current_quantity -= 1
                                        }

                                    })
                                    .foregroundColor(ColorApp.ICON_WHITE)
                                    
                                    Text("\(current_quantity)")
                                        .foregroundColor(ColorApp.TEXT_WHITE)
                                        .font(.headline)
                                    
                                    
                                    FontIcon.button(.awesome5Solid(code: .plus), action: {
                                        current_quantity += 1
                                    })
                                    .foregroundColor(ColorApp.ICON_WHITE)
                                })
                            })

                            Spacer()
                            
                            Button(action: {
                                
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
                        .padding()
                    })
                        
                }
            }
            .padding()
            
        }
        .background(ColorApp.SECOND)
        .cornerRadius(20)
        
    }
}

#Preview {
    FoodDetail()
}
