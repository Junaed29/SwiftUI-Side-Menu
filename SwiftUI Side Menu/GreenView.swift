//
//  GreenView.swift
//  SwiftUI Side Menu
//
//  Created by Junaed Muhammad Chowdhury on 9/4/23.
//

import SwiftUI

struct GreenView: View {
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            Text("Hello, Green!").foregroundColor(.white).font(.title)
        }.navigationTitle("Green")
    }
}

struct GreenView_Previews: PreviewProvider {
    static var previews: some View {
        GreenView()
    }
}
