//
//  Food.swift
//  YumYard
//
//  Created by Nguyen Van Hien on 16/5/24.
//

import Foundation
struct Food{
    let id = UUID().uuidString
    var name: String = ""
    var price: Double = 0.0
    var image: String = ""
    var subImages: [String] = []
    var rating: Rating
    
    var isLiked: Bool = false
}

struct Rating{
    var star: Double = 0.0
    var description: String = ""
}

struct Order{
    let id = UUID().uuidString
    let create_at: Date
    let user: User
}

struct User: Codable{
    let id = UUID().uuidString
    var name: String = ""
    var email: String = ""
    var password: String = ""
    var imageUrl: String = ""
    var address: String = ""
}
