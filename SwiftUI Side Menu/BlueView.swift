//
//  BlueView.swift
//  SwiftUI Side Menu
//
//  Created by Junaed Muhammad Chowdhury on 9/4/23.
//

import SwiftUI

struct BlueView: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            Text("Hello, Blue!").foregroundColor(.white).font(.title)
        }.navigationTitle("Blue")
    }
}

struct BlueView_Previews: PreviewProvider {
    static var previews: some View {
        BlueView()
    }
}
