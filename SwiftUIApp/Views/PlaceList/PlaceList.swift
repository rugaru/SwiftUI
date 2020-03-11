//
//  PlaceList.swift
//  SwiftUIApp
//
//  Created by Alina on 03.03.2020.
//  Copyright © 2020 rugarusik. All rights reserved.
//

import SwiftUI

struct PlaceList: View {
    
    @EnvironmentObject var viewModel: PlaceListViewModel
    @EnvironmentObject var appState: TabBarState
    
    
    var body: some View {
        NavigationView {
            List { ForEach(0..<viewModel.places.count) { idx in
                NavigationLink(destination: PlaceDetailView(place: self.viewModel.places[idx]), tag: idx, selection:  self.$appState.selectedItem) {
                    PlaceRow(place: self.viewModel.places[idx])
                }
                }
            }.navigationBarTitle("Places")
        } // NavigationView
    }
}

struct PlaceList_Previews: PreviewProvider {
    static var previews: some View {
        PlaceList().environmentObject(PlaceListViewModel())
    }
}


