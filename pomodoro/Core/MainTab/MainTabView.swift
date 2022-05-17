//
//  MainTabView.swift
//  pomodoro
//
//  Created by 최인영 on 2022/05/17.
//

import SwiftUI

struct MainTabView: View {
    
    @State private var selectedIndex = 0
    
    var body: some View {
        TabView(selection: $selectedIndex){
            MainView()
                .onTapGesture{
                    self.selectedIndex = 0
                }
                .tabItem{
                    Image(systemName: "house")
                }.tag(0)
            ProfileView()
                .onTapGesture{
                    self.selectedIndex = 1
                }
                .tabItem{
                    Image(systemName: "bell")
                }.tag(1)
            ProfileView()
                .onTapGesture{
                    self.selectedIndex = 1
                }
                .tabItem{
                    Image(systemName: "bell")
                }.tag(1)
            ProfileView()
                .onTapGesture{
                    self.selectedIndex = 1
                }
                .tabItem{
                    Image(systemName: "bell")
                }.tag(1)
        }
        
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MainTabView()
                .previewInterfaceOrientation(.portrait)
            MainTabView()
                .previewInterfaceOrientation(.portrait)
        }
    }
}
