//
//  ContentView.swift
//  Shapes
//
//  Created by Brendan on 1/15/22.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        HStack(alignment: .center) {
            Triangle()
            Rectangle()
            Circle()
        }
        .padding()
    }
}

struct Shapes_Preview: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
