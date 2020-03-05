//
//  PlaceDetailView.swift
//  SwiftUIApp
//
//  Created by Alina on 04.03.2020.
//  Copyright © 2020 rugarusik. All rights reserved.
//

import SwiftUI

struct PlaceDetailView: View {
    
    var place: Place
    
    var body: some View {
        Text(place.name)
    }
}

struct PlaceDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceDetailView(place: Place(id: 1, name: "Example", imageName: ""))
    }
}
