//
//  BackgroundView.swift
//  Foodie
//
//  Created by Ha Duyen Quang Huy on 27/06/2023.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        
        ZStack {
            VStack {
                RectangleOneSideCurveShape(curveHeight: 66)
                    .fill(Color(fColor: .primary))
                    .frame(height: UIScreen.height(percent: 444/778))
                
                Spacer()
            }
            .ignoresSafeArea()
            
            VStack(spacing: 16) {
                
                Image("logo")
                    .renderingMode(.template)
                    .foregroundColor(.white)
                
                Text("Deliver Favourite Food")
                    .applyFont(with: .heading4(size: 21))
                    .foregroundColor(.white)
                    .shadow(color: Color(fColor: .shadow).opacity(0.2), radius: 50, x: 11, y: 28)
                
                Spacer()
            }
            .padding(.top, 38)
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
