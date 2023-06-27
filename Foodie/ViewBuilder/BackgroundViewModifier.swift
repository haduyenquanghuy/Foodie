//
//  BackgroundViewModifier.swift
//  Foodie
//
//  Created by Ha Duyen Quang Huy on 27/06/2023.
//

import SwiftUI

struct BackgroundViewModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        
        ZStack {
            BackgroundView()
            
            VStack(spacing: 0) {
                
                Image("logo")
                    .renderingMode(.template)
                    .foregroundColor(.white)
                    .padding(.bottom, 16)
                
                Text("Deliver Favourite Food")
                    .applyFont(with: .semibold(size: 21))
                    .foregroundColor(.white)
                    .shadow(color: Color(fColor: .shadow).opacity(0.2), radius: 50, x: 11, y: 28)
                    .padding(.bottom, 56)
                
                content
//                    .background(.white)
                    .cornerRadius(20)
                    .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 0)
                
                Spacer()
                    
            }
            .padding(.top, 38)
        }
    }
}

extension View {
    
    func addBackground() -> some View {
       modifier(BackgroundViewModifier())
    }
}

struct BackgroundViewModifier_Previews: PreviewProvider {
    static var previews: some View {
        Color.white
            .frame(width: 320, height: 520)
            .addBackground()
    }
}
