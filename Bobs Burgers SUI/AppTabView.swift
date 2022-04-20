//
//  TabView.swift
//  Bobs Burgers SUI
//
//  Created by Justin Seal on 3/29/22.
//

import SwiftUI

struct AppTabView: View {
    var body: some View {
        TabView {
            ScrollingCharacterView()
                .tabItem {
                    Label("Characters", systemImage: "person.3.fill")
                }
            StoreNextDoorView()
                .tabItem {
                    Label("Stores", systemImage: "building.2.fill")
                }
            PestTruckView()
                .tabItem {
                    Label("Pest Truck", systemImage: "ant.fill")
                }
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}
