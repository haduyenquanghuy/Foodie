//
//  RetangleOneSideCurveShape.swift
//  Foodie
//
//  Created by Ha Duyen Quang Huy on 27/06/2023.
//

import SwiftUI

struct RectangleOneSideCurveShape: Shape {
    
    var curveHeight: CGFloat
    
    func path(in rect: CGRect) -> Path {
        
        var path = Path()
        let heightRectangle = rect.height - curveHeight
        
        path.move(to: rect.origin)
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y:heightRectangle))
        path.addQuadCurve(to: CGPoint(x: rect.minX, y: heightRectangle), control: CGPoint(x: rect.midX, y: rect.maxY))
        
        return path
    }
    
}

struct RectangleOneSideCurveShape_Previews: PreviewProvider {
    static var previews: some View {
        RectangleOneSideCurveShape(curveHeight: 44)
            .fill(Color.blue)
            .frame(height: 400)
            
    }
}
