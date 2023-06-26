//
//  View+Extensions.swift
//  Foodie
//
//  Created by Ha Duyen Quang Huy on 26/06/2023.
//

import SwiftUI

extension View {
    
    func foodieForegroundColor(with color: FoodieColor) -> some View {
        
        foregroundColor(Color(hex: color.hex))
    }
}
