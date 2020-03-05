//
//  ModalView.swift
//  SwiftUIApp
//
//  Created by Alina on 05.03.2020.
//  Copyright © 2020 rugarusik. All rights reserved.
//

import SwiftUI

struct ModalView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        VStack {
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("Close")
            }
        }
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}
