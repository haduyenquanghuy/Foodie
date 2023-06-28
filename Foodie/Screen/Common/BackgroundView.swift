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

        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
