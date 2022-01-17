//
//  Circle.swift
//  Shapes
//
//  Created by Brendan on 1/15/22.
//

import SwiftUI

struct Circle: View {
    @EnvironmentObject var colorData: ColorData
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let width = min(geometry.size.width, geometry.size.height)
                let height = width
                
                path.move(to: CGPoint(x: 0, y: 0))
                path.addEllipse(in: CGRect(
                    origin: CGPoint(x: 0, y: 0),
                    size: CGSize(
                        width: width,
                        height: height
                    )
                ))
            }
            .fill(.linearGradient(Gradient(colors: [self.colorData.circleStart, self.colorData.circleEnd]), startPoint: UnitPoint(x: 0.5, y: 0.0), endPoint: UnitPoint(x: 0.5, y: 0.7)))
        }
        .aspectRatio(1, contentMode: .fit)
    }
}

struct Circle_Previews: PreviewProvider {
    static var previews: some View {
        Circle()
            .environmentObject(ColorData())
    }
}
