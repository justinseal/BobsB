//
//  CharacterDetailView.swift
//  Bobs Burgers SUI
//
//  Created by Justin Seal on 4/13/22.
//

import SwiftUI

struct CharacterDetailView: View {
    @State var character: Character
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: character.image)) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 200, height: 200, alignment: .leading)
            Spacer()
            
            VStack {
                Text(character.name)
                    .font(.headline)
                VStack {
                    Text("Gender: \(character.gender ?? "NA")")
                        .font(.subheadline)
                    Text("Hair color: \(character.hairColor ?? "NA")")
                        .font(.subheadline)
                }
            }
        }
        
    }
}
