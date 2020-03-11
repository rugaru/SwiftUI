//
//  RootView.swift
//  SwiftUIApp
//
//  Created by Alina on 03.03.2020.
//  Copyright © 2020 rugarusik. All rights reserved.
//

import SwiftUI

struct RootView: View {
    
    @EnvironmentObject var viewModel: PlaceListViewModel
    @EnvironmentObject var appState: TabBarState
    
    var body: some View {
        
        TabView(selection: $appState.selectedTab) {
            FirstView()
                .tabItem {
                    Text("First")
            }.tag(Tab.first)
            
            PlaceList()
                .tabItem {
                    Text("Places")
            }.tag(Tab.second)
            
            ThirdView()
                .tabItem {
                    Text("Third")
            }.tag(Tab.third)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
