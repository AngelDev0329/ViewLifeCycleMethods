//
//  DetailView.swift
//  ViewLifeCycleMethods
//
//  Created by Karthick Selvaraj on 01/05/20.
//  Copyright © 2020 Mallow Technologies Private Limited. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    var productName: String
    
    var body: some View {
        Text(productName)
            .font(.title)
            .navigationBarTitle(Text(productName), displayMode: .inline)
            .onAppear { print("🔵 OnAppear") }
            .onDisappear { print("🔵 OnDisappear") }
    }
    
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(productName: "iPhone")
    }
}
