//
//  ProfileView.swift
//  HomeWork1
//
//  Created by Sfera on 01.12.2019.
//  Copyright © 2019 Duy Nguyen. All rights reserved.
//

import SwiftUI
import Combine

struct ProfileView: View {
    @State private var showAboutMe = false
    var body: some View {
        Button(action: {
            self.showAboutMe = true
        }) {
            Text("About me")
        }.betterSheet(isPresented: self.$showAboutMe) {
            AboutMeModal()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

struct AboutMeModal: View {
 
    var body: some View {
        Text("🐶")
            .font(.largeTitle)
    }
}
