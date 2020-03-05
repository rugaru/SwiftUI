//
//  PlaceListViewModel.swift
//  SwiftUIApp
//
//  Created by Alina on 05.03.2020.
//  Copyright © 2020 rugarusik. All rights reserved.
//

import SwiftUI

final class PlaceListViewModel: ObservableObject {
    
    @Published private(set) var places: [Place] = load("placesData.json")

}
