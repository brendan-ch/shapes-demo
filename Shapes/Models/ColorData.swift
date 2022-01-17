//
//  ColorData.swift
//  Shapes
//
//  Created by Brendan on 1/16/22.
//

import Foundation
import SwiftUI
import Combine

final class ColorData: ObservableObject {
    @Published var triangleStart: Color = Color(red: 66.0 / 255, green: 191.0 / 255, blue: 245.0 / 255)
    @Published var triangleEnd: Color = Color(red: 66.0 / 255, green: 111.0 / 255, blue: 245.0 / 255)
    
    @Published var rectangleStart: Color = Color(red: 255.0 / 255, green: 67.0 / 255.0, blue: 54.0 / 255.0)
    @Published var rectangleEnd: Color = Color(red: 222.0 / 255, green: 73.0 / 255.0, blue: 138.0 / 255.0)
                   
    @Published var circleStart: Color = Color(red: 83.0 / 255, green: 245.0 / 255, blue: 161.0 / 255)
    @Published var circleEnd: Color = Color(red: 5.0 / 255, green: 247.0 / 255, blue: 199.0 / 255)
}
