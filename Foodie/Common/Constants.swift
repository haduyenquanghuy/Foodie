//
//  Constants.swift
//  Foodie
//
//  Created by Ha Duyen Quang Huy on 26/06/2023.
//

import Foundation

struct Constants {
    
    static var FONT_NAME = "Open Sans"
}

enum FoodieColor {
    
    case primary
    case textLight
    
    var hex: String {
        
        switch self {
            case .primary:
                return "#EC2578"
            case .textLight:
                return "#646464"
        }
    }
}
