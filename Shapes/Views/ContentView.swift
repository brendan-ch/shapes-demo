//
//  ContentView.swift
//  Shapes
//
//  Created by Brendan on 1/16/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var colorData = ColorData()
    
    var body: some View {
        VStack {
            Shapes()
            ColorMenu()
        }
        .environmentObject(colorData)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
