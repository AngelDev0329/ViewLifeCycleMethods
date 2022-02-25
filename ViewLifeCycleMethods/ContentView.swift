//
//  ContentView.swift
//  ViewLifeCycleMethods
//
//  Created by Karthick Selvaraj on 01/05/20.
//  Copyright © 2020 Mallow Technologies Private Limited. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let products = ["iPhone", "iPad", "iMac", "MacBook", "Watch", "AppleTv"]
    @State private var shouldShowSlider = false
    @State private var size: CGFloat = 20.0
    
    var body: some View {
        NavigationView {
            VStack {
                Section {
                    Toggle(isOn: $shouldShowSlider) {
                        Text("Wanna change font size?")
                    }
                }.padding()
                if shouldShowSlider {
                    Slider(value: $size, in: 15...30, label: {
                        Text("Font size")
                    }).padding()
                        .onAppear { print("🟠 Appear") }
                        .onDisappear { print("🟠 Disappear") }
                }
                Section {
                    List(products, id: \.self) { product in
                        NavigationLink(destination: DetailView(productName: product)) {
                            Text(product)
                                .font(.system(size: self.size))
                        }
                    }
                    .navigationBarTitle(Text("Products"), displayMode: .inline)
                    .onAppear { print("🟢 OnAppear") }
                    .onDisappear { print("🟢 OnDisappear") }
                }
            }
        }
        .onAppear { print("🔴 OnAppear") }
        .onDisappear { print("🔴 OnDisappear") }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
