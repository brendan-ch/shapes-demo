//
//  Triangle.swift
//  Shapes
//
//  Created by Brendan on 1/15/22.
//

import SwiftUI
import CoreGraphics

struct Triangle: View {
    @EnvironmentObject var colorData: ColorData
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let width = min(geometry.size.width, geometry.size.height)
                let height = width
                
                path.move(to: CGPoint(x: 0, y: 0))
                
                path.addLine(to: CGPoint(x: width, y: 0))
                path.addLine(to: CGPoint(x: width / 2, y: height))
            }
            .fill(.linearGradient(
                Gradient(colors: [colorData.triangleStart, colorData.triangleEnd]),
                startPoint: UnitPoint(x: 0.5, y: 0.0),
                endPoint: UnitPoint(x: 0.5, y: 0.7)
            ))
        }
        .aspectRatio(1, contentMode: .fit)
    }
}

struct Triangle_Previews: PreviewProvider {
    static var previews: some View {
        Triangle()
            .environmentObject(ColorData())
    }
}
