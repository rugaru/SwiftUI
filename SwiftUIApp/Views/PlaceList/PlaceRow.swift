//
//  PlaceRow.swift
//  SwiftUIApp
//
//  Created by Alina on 03.03.2020.
//  Copyright © 2020 rugarusik. All rights reserved.
//

import SwiftUI

struct PlaceRow: View {
    var place: Place
    
    var body: some View {
        HStack {
            Text(place.name)
            Spacer()
        }
    }
}

struct PlaceRow_Previews: PreviewProvider {
    static var previews: some View {
        PlaceRow(place: Place(id: 1, name: "Example", imageName: ""))
    }
}
