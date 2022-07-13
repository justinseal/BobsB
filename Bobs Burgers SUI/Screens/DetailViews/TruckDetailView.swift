//
//  TruckDetailView.swift
//  Bobs Burgers SUI
//
//  Created by Justin Seal on 7/13/22.
//

import SwiftUI

struct TruckDetailView: View {
    @State var truck: PestTruck
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: truck.image)) { image in
                image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 300, height: 300)
            
            VStack {
                Text(truck.name ?? "Not Available")
                    .font(.headline)
                
            }
        }
    }
}

struct TruckDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TruckDetailView(truck: PestTruck.example)
    }
}
