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
    
    @Binding var showDetailsView: Int?
    
    var body: some View {
        NavigationView {
            List(viewModel.places) { place in
                NavigationLink(destination: PlaceDetailView(place: place)) {
                    PlaceRow(place: place)
                }
            }
        }.navigationBarTitle("Places")
    }
}

struct PlaceList_Previews: PreviewProvider {
    static var previews: some View {
        PlaceList(showDetailsView: .constant(0)).environmentObject(PlaceListViewModel())
    }
}


