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
        List(stores, id: \.id) { store in
            VStack {
                Text(store.name)
                    .font(.headline)
                
            }
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
