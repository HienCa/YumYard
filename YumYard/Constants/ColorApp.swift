//
//  ColorApp.swift
//  YumYard
//
//  Created by Nguyen Van Hien on 16/5/24.
//

import SwiftUI
class ColorApp{
    static let BG_SPLASHSCREEN = LinearGradient(gradient: Gradient(colors: [Color(hex: "FFFFFF"), Color(hex: "040000")]), startPoint: .top, endPoint: .bottom)
    static let BG_PRIMARY = LinearGradient(gradient: Gradient(colors: [Color(hex: "FBEDEA"), Color(hex: "FFFDFD")]), startPoint: .top, endPoint: .bottom)
    
    static let GRAY = Color(hex: "6A6A6A")
    static let PRIMARY = Color(hex: "FF785B")
    static let SECOND = Color(hex: "FFFFFF")
    static let THIRD = Color(hex: "F8F8F8")
    
    static let INPUT_TEXT = Color(hex: "#C8CBC7")
    static let INPUT_BACKGROUND = Color(hex: "#FFFFFF")
    
    static let TEXT_PRIMARY = Color(hex: "#FF785B")
    static let TEXT_WHITE = Color(hex: "#FFFFFF")
    static let TEXT_SECOND = Color(hex: "#C8CBC7")
    static let TEXT_CONTENT = Color(hex: "#746969")
    
    static let ICON_PRIMARY = Color(hex: "#FF785B")
    static let ICON_WHITE = Color(hex: "#FFFFFF")
    static let ICON_SECOND  = Color(hex: "#6A6A6A")
}
