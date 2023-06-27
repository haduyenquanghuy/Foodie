//
//  PrimaryButton.swift
//  Foodie
//
//  Created by Ha Duyen Quang Huy on 27/06/2023.
//

import SwiftUI

struct PrimaryButton: View {
    
    var title: String
    var action: () -> ()
    
    var body: some View {
        Button(action: {
            action()
        }) {
            Text(title)
                .foregroundColor(.white)
                .applyFont(with: .semibold(size: 17))
                .padding(.vertical, 17)
                .frame(maxWidth: .infinity)
        }
        .background(Color(hex: "#EC2578"))
        .cornerRadius(5)
        
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(title: "Next", action: {
            
        })
        .padding(.horizontal, 12)
    }
}
