//
//  TabBarState.swift
//  SwiftUIApp
//
//  Created by Alina on 05.03.2020.
//  Copyright © 2020 rugarusik. All rights reserved.
//

import SwiftUI

enum Tab: Hashable {
    case first
    case second
    case third
}

class TabBarState: ObservableObject {
    @Published var selectedTab: Tab = .first
    @Published var selectedItem: Int?
}
