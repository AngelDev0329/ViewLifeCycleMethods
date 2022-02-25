//
//  DashboardView.swift
//  ViewLifeCycleMethods
//
//  Created by Karthick Selvaraj on 01/05/20.
//  Copyright © 2020 Mallow Technologies Private Limited. All rights reserved.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        TabView {
            ContentView().tabItem {
                VStack {
                    Image(systemName: "bag.fill")
                    Text("Products")
                }
            }
            NewsView().tabItem {
                VStack {
                    Image(systemName: "square.and.pencil")
                    Text("News")
                }
            }
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
