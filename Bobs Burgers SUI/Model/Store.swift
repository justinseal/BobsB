//
//  Store.swift
//  Bobs Burgers SUI
//
//  Created by Justin Seal on 3/29/22.
//

import SwiftUI

struct Store: Codable {
    let id: Int
    let name: String
    let image: String
    let season: Int
    let episode: Int
    let url: String


static let example = Store(id: 1, name: "Example", image: "https://bobsburgers-api.herokuapp.com/images/storeNextDoor/1.jpg", season: 2, episode: 3, url: "https://bobsburgers-api.herokuapp.com/storeNextDoor/1")
}
