//
//  CacheManager.swift
//  YumYard
//
//  Created by Nguyen Van Hien on 18/5/24.
//

import Foundation
class CacheManager {
    
    private init() {}
    
    static func setCurrentUser(value: User, key: String) {
        let userEncoded = try? JSONEncoder().encode(value)
        UserDefaults.standard.set(userEncoded, forKey: key)
    }
    
    static func getCurrentUser(key: String) -> User {
        if let userEncoded = UserDefaults.standard.data(forKey: key),
           let user = try? JSONDecoder().decode(User.self, from: userEncoded) {
            return user
        }
        return User()
    }
}
