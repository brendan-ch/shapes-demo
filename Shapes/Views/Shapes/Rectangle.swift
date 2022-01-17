//
//  Rectangle.swift
//  Shapes
//
//  Created by Brendan on 1/15/22.
//

import SwiftUI

struct Rectangle: View {
    @EnvironmentObject var colorData: ColorData
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let width = min(geometry.size.width, geometry.size.height)
                let height = width
                
                path.move(to: CGPoint(x: 0, y: 0))
                path.addRect(CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: width, height: height)))
            }
            .fill(.linearGradient(
                Gradient(colors: [self.colorData.rectangleStart, self.colorData.rectangleEnd]),
                startPoint: UnitPoint(x: 0.5, y: 0.0),
                endPoint: UnitPoint(x: 0.5, y: 0.7)
            ))
        }
        .aspectRatio(1, contentMode: .fit)
    }
    
    static let gradientStart = Color(red: 255.0 / 255, green: 67.0 / 255.0, blue: 54.0 / 255.0)
    static let gradientEnd = Color(red: 222.0 / 255, green: 73.0 / 255.0, blue: 138.0 / 255.0)
}

struct Rectangle_Previews: PreviewProvider {
    static var previews: some View {
        Rectangle()
            .environmentObject(ColorData())
    }
}
