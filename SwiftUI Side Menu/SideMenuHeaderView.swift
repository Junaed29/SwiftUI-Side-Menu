//
//  SideMenuHeaderView.swift
//  SwiftUI Side Menu
//
//  Created by Junaed Muhammad Chowdhury on 18/4/23.
//

import SwiftUI

struct SideMenuHeaderView: View {
    
    @Binding var isShowingMenu: Bool
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            
            Button {
                withAnimation(.spring()) {
                    isShowingMenu.toggle()
                }
            } label: {
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32)
                    .padding()
            }

            
            
            VStack(alignment: .leading){
                Image("logo")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 65, height: 65)
                    .clipShape(Circle())
                    .padding(.bottom,16)
                
                Text("Junaed")
                    .font(.system(size: 24,weight: .semibold))
                
                Text("@junaed29")
                    .font(.system(size: 14))
                    .padding(.bottom,20)
                
                HStack (spacing: 12){
                    HStack {
                        Text("1,256").bold()
                        Text("Following")
                    }
                    
                    HStack {
                        Text("656").bold()
                        Text("Followers")
                    }
                    
                    Spacer()
                }
                
                Spacer()
            }.padding()
        }
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isShowingMenu: .constant(false))
    }
}
