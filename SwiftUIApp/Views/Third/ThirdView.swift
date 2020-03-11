//
//  ThirdView.swift
//  SwiftUIApp
//
//  Created by Alina on 04.03.2020.
//  Copyright © 2020 rugarusik. All rights reserved.
//

import SwiftUI

struct ThirdView: View {
    
    @State private var showModal = false
    
    var body: some View {
        NavigationView {
            Button(action: {
                self.showModal = true
            }) {
                Text("Open modal view")
            }.sheet(isPresented: self.$showModal, onDismiss: {
                print("dismiss")
            }) {
                ModalView()
            }.navigationBarTitle("Third")
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}



