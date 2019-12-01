//
//  ContentView.swift
//  HomeWork1
//
//  Created by Duy Nguyen on 01.12.2019.
//  Copyright © 2019 Duy Nguyen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection = 1
    
    var body: some View {
        TabView(selection: $selection) {
            Button(action: {
                self.selection = 1
            }) {
                Text("Show the best new today!")
            }
            .tag(0)
            .tabItem ({
                Image(systemName:"square.and.arrow.down")
                Text("Link")
            })
            HotNewsView()
                .tag(1)
                .tabItem ({
                    Image(systemName: "flame")
                    Text("Hot news")
            })
            ProfileView()
                .tag(2)
                .tabItem ({
                    Image(systemName: "person.fill")
                    Text("Profile")
                })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
