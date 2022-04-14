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
            Spacer()
            AsyncImage(url: URL(string: character.image)) { image in
                image
                    .resizable()
                    .scaledToFill()
                    .padding()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 200, height: 200, alignment: .leading)
            Spacer()
            
            VStack {
                Text(character.name)
                    .font(.headline)
                VStack {
                    Text("Voiced by: \(character.voicedBy ?? "Not noted") ")
                        .font(.subheadline)
                    Text("Gender: \(character.gender ?? "NA")")
                        .font(.subheadline)
                    Text("Hair color: \(character.hairColor ?? "NA")")
                        .font(.subheadline)
                }
                .padding()
            }
        }
        
    }
}
