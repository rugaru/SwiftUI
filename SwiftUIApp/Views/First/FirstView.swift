//
//  FirstView.swift
//  SwiftUIApp
//
//  Created by Alina on 03.03.2020.
//  Copyright © 2020 rugarusik. All rights reserved.
//

import SwiftUI

struct FirstView: View {
    @EnvironmentObject var appState: TabBarState
    
    var body: some View {
        NavigationView {
            Button(action: {
                self.appState.selectedTab = .second
                self.appState.selectedItem = 1
            }) {
                Text("To the second tab")
            }.navigationBarTitle("First")
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
