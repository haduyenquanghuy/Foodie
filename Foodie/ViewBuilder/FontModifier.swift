//
//  FontModifier.swift
//  Foodie
//
//  Created by Ha Duyen Quang Huy on 26/06/2023.
//

import SwiftUI

struct FontModifier: ViewModifier {
    
    let fontType: TitleFontType
    
    func body(content: Content) -> some View {
        content
            .font(fontType.font)
    }
}

extension View {
    
    func applyFont(with font: TitleFontType) -> some View {
        
        self.modifier(FontModifier(fontType: font))
    }
}

enum TitleFontType {
    
    case heading5(size: CGFloat)
    case heading3(size: CGFloat)
    case body(size: CGFloat)
    
    var font: Font {
        
        switch self {
                
            case .heading5(let size):
                return .custom(Constants.FONT_NAME, size: size)
                    .weight(.semibold)
            
            case .heading3(size: let size):
                return .custom(Constants.FONT_NAME, size: size)
                    .weight(.bold)
                
            case .body(size: let size):
                return .custom(Constants.FONT_NAME, size: size)
                    .weight(.regular)
        }
    }
    
}
