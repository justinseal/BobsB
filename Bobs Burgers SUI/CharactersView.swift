//
//  CharactersView.swift
//  Bobs Burgers SUI
//
//  Created by Justin Seal on 3/29/22.
//

import SwiftUI

struct CharactersView: View {
    
    @State private var characters = [Character]()
    
    var body: some View {
        NavigationView {
            List(characters, id: \.id) { character in
                NavigationLink(destination: CharacterDetailView(character: character)) {
                    VStack {
                        Text(character.name)
                            .font(.body)
                    }
                }
            }
            .navigationTitle("Characters")
        }
        .task {
            try? await characters = NetworkManager.shared.getCharacters()
        }
    }
}

struct CharactersView_Preview: PreviewProvider {
    static var previews: some View {
        CharactersView()
    }
}
