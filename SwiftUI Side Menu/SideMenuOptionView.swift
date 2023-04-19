//
//  SideMenuOptionView.swift
//  SwiftUI Side Menu
//
//  Created by Junaed Muhammad Chowdhury on 18/4/23.
//

import SwiftUI

struct SideMenuOptionView: View {
    
    @State private var toRedView = false
    @State private var toGreenView = false
    @State private var toBlueView = false
    
    var body: some View {
        VStack(spacing: 16) {
            NavigationLink(destination: RedView(), isActive: $toRedView) {EmptyView()}
            
            NavigationLink(destination: GreenView(), isActive: $toGreenView) {EmptyView()}
            
            NavigationLink(destination: BlueView(), isActive: $toBlueView) {EmptyView()}
            
            
            HStack(spacing: 16) {
                Button {
                    toRedView = true
                } label: {
                    Text("Red").foregroundColor(.red)
                }

                
                Spacer()
            }
            
            HStack(spacing: 16) {
                Button {
                    toBlueView = true
                } label: {
                    Text("Blue").foregroundColor(.blue)
                }

                
                Spacer()
            }
            
            HStack(spacing: 16) {
                Button {
                    toGreenView = true
                } label: {
                    Text("Green").foregroundColor(.green)
                }

                
                Spacer()
            }
            

            
        }
        .padding()
    }
}

struct SideMenuOptionView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionView()
    }
}
