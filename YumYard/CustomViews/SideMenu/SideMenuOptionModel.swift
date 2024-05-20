//
//  SideMenuOptionModel.swift
//  YumYard
//
//  Created by Nguyen Van Hien on 17/5/24.
//

import SwiftUIFontIcon
import SwiftUI
enum SideMenuOptionModel: Int, CaseIterable{
    case home
    case profile
    case wishlist
    case loyaltyPoints
    case paymentMethods

    
    var title: String{
        switch self{
        case .home:
            return "Home"
        case .profile:
            return "Profile"
        case .wishlist:
            return "Wish List"
        case .loyaltyPoints:
            return "Loyalty Points"
        case .paymentMethods:
            return "Payment Methods"

        }
    }
    
    var tag: Int{
        switch self{
        case .profile:
            return 0
        case .home:
            return 1
        case .wishlist:
            return 2
        case .loyaltyPoints:
            return 3
        case .paymentMethods:
            return 4

        }
    }
    
    var systemImageName: Text{
        switch self{
        case .home:
            return FontIcon.text(.awesome5Solid(code: .home))
        case .profile:
            return FontIcon.text(.awesome5Solid(code: .people_carry))
        case .wishlist:
            return FontIcon.text(.awesome5Solid(code: .heart))
        case .loyaltyPoints:
            return FontIcon.text(.awesome5Solid(code: .medal))
        case .paymentMethods:
            return FontIcon.text(.awesome5Solid(code: .money_check_alt))

        }
    }
}

extension SideMenuOptionModel: Identifiable{
    var id: Int{return self.rawValue}
}

