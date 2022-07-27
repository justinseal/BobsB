//
//  ScrollingCharacterView.swift
//  Bobs Burgers SUI
//
//  Created by Justin Seal on 4/19/22.
//

import SwiftUI

struct ScrollingCharacterView: View {
    @State var characters = [Character]()
    
    let layout = [
        GridItem(), GridItem(), GridItem()
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: layout) {
                    ForEach(characters) { character in
                        VStack {
                            AsyncImage(url: URL(string: character.image)) { image in
                                image
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                
                            } placeholder: {
                                Image("unknown")
                            }
                            Text(character.name)
                                .font(.caption2)
                        }
                    }
                }
            }
            .task {
                try? await characters = NetworkManager.shared.getCharacters()
            }
            .navigationTitle("Characters")
        }
    }
}

struct ScrollingCharacterView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollingCharacterView()
    }
}
