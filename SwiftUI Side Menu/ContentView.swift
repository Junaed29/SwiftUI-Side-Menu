//
//  ContentView.swift
//  SwiftUI Side Menu
//
//  Created by Junaed Muhammad Chowdhury on 9/4/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingMenu = false
    
    
    var body: some View {
        NavigationView{
            ZStack {
                
                if isShowingMenu{
                    SideMenuView(isShowingMenu: $isShowingMenu)
                }
                
                HomeView()
                    .cornerRadius(isShowingMenu ? 20 : 10)
                    .offset(x: isShowingMenu ? 300 : 0, y: isShowingMenu ? 44 : 0)
                    .scaleEffect(isShowingMenu ? 0.8 : 1)
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button {
                                withAnimation(.spring()) {
                                    isShowingMenu.toggle()
                                }
                            } label: {
                                Image(systemName: "list.bullet")
                                    .foregroundColor(.black)
                            }
                        }
                }
            }.onAppear{
                isShowingMenu = false
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct HomeView: View {
    var body: some View {
        ZStack {
            Color(.white)
            Text("Hello World")
        }
        
    }
}
