//
//  NewsView.swift
//  ViewLifeCycleMethods
//
//  Created by Karthick Selvaraj on 01/05/20.
//  Copyright © 2020 Mallow Technologies Private Limited. All rights reserved.
//

import SwiftUI

struct NewsView: View {
    var body: some View {
        NavigationView {
            Text("Sample screen")
        }
        .navigationBarTitle(Text("News"))
        .onAppear { print("🟣 OnAppear") }
        .onDisappear { print("🟣 OnDisappear") }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
