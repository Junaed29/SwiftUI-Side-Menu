//
//  SideMenuView.swift
//  SwiftUI Side Menu
//
//  Created by Junaed Muhammad Chowdhury on 18/4/23.
//

import SwiftUI

struct SideMenuView: View {
    
    @Binding var isShowingMenu: Bool
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue,.purple], startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            
            VStack {
                SideMenuHeaderView(isShowingMenu: $isShowingMenu)
                    .frame(height: 240)
                
                
                SideMenuOptionView()
             
                Spacer()
                
            }.foregroundColor(.white)
            
        }.toolbar(.hidden, for: .navigationBar)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowingMenu: .constant(false))
    }
}
