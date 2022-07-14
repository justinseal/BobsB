//
//  StoreDetail.swift
//  Bobs Burgers SUI
//
//  Created by Justin Seal on 4/1/22.
//

import SwiftUI

struct StoreDetail: View {
    @State var store: Store
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: store.image)) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 200, height: 200, alignment: .leading)
            
            VStack {
                Text(store.name)
                    .font(.headline)
                VStack {
                    Text("Season: \(store.season)")
                        .font(.subheadline)
                    Text("Episode: \(store.episode)")
                        .font(.subheadline)
                }
            }
        }
    }
}

struct StoreDetail_Previews: PreviewProvider {
    static var previews: some View {
        StoreDetail(store: Store.example)
    }
}
