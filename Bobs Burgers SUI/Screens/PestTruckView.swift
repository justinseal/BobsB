//
//  PestTruckView.swift
//  Bobs Burgers SUI
//
//  Created by Justin Seal on 3/29/22.
//

import SwiftUI

struct PestTruckView: View {
    @State private var truck = [PestTruck]()
    
    var body: some View {
        NavigationView {
            List(truck, id: \.id) { truck in
                NavigationLink(destination: TruckDetailView(truck: truck)) {
                    VStack {
                        Text(truck.name ?? "N/A")
                            .font(.body)
                    }
                }
            }
            .navigationTitle("Pest Control")
        }
        .task {
            try? await truck = NetworkManager.shared.getTrucks()
        }
    }
}

struct PestTruckView_Previews: PreviewProvider {
    static var previews: some View {
        PestTruckView()
    }
}
