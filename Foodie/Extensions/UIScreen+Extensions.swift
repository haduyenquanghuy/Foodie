//
//  UIScreen+Extensions.swift
//  Foodie
//
//  Created by Ha Duyen Quang Huy on 26/06/2023.
//

import UIKit

extension UIScreen {
    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
    static let screenSize = UIScreen.main.bounds.size
    
    static func height(percent fractional: CGFloat) -> CGFloat {
        return screenHeight * fractional
    }
    
    static func weight(percent fractional: CGFloat) -> CGFloat {
        return screenWidth * fractional
    }
}
