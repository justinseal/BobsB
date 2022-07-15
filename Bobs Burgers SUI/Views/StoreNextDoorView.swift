//
//  StoreNextDoorView.swift
//  Bobs Burgers SUI
//
//  Created by Justin Seal on 3/29/22.
//

import SwiftUI

struct StoreNextDoorView: View {
    
    @State private var stores = [Store]()
    
    var body: some View {
        NavigationView {
            List(stores, id: \.id) { store in
                NavigationLink(destination: StoreDetail(store: store)) {
                    VStack {
                        Text(store.name ?? "Name Unavailable")
                            .font(.body)
                    }
                }
            }
            .navigationTitle("Store Next Door")
        }
        .task {
            try? await stores = NetworkManager.shared.getStores()
        }
    }
}

struct StoreNextDoorView_Previews: PreviewProvider {
    static var previews: some View {
        StoreNextDoorView()
    }
}
