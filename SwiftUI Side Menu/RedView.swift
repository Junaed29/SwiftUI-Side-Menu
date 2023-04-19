//
//  RedView.swift
//  SwiftUI Side Menu
//
//  Created by Junaed Muhammad Chowdhury on 9/4/23.
//

import SwiftUI

struct RedView: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            Text("Hello, Red!").foregroundColor(.white).font(.title)
        }.navigationTitle("Red")
    }
}

struct RedView_Previews: PreviewProvider {
    static var previews: some View {
        RedView()
    }
}
