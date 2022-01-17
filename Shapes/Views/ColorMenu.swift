//
//  ColorMenu.swift
//  Shapes
//
//  Created by Brendan on 1/16/22.
//

import SwiftUI

struct ColorMenu: View {
    @State private var color = Color(red: 255.0 / 255, green: 125.0 / 255, blue: 50.0)
    
    @EnvironmentObject var colorData: ColorData

    static var defaultColor = Color(red: 255.0 / 255, green: 125.0 / 255, blue: 50.0)
    
    var body: some View {
        List {
            Section("TRIANGLE") {
                ColorPicker("Starting gradient", selection: self.$colorData.triangleStart)
                ColorPicker("Ending gradient", selection: self.$colorData.triangleEnd)
            }
            Section("SQUARE") {
                ColorPicker("Starting gradient", selection: self.$colorData.rectangleStart)
                ColorPicker("Ending gradient", selection: self.$colorData.rectangleEnd)
            }
            Section("CIRCLE") {
                ColorPicker("Starting gradient", selection: self.$colorData.circleStart)
                ColorPicker("Ending gradient", selection: self.$colorData.circleEnd)
            }
        }
    }
}

struct ColorMenu_Previews: PreviewProvider {
    static var previews: some View {
        ColorMenu()
            .environmentObject(ColorData())
    }
}
