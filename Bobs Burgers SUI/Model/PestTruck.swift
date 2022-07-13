//
//  PestTruck.swift
//  Bobs Burgers SUI
//
//  Created by Justin Seal on 4/14/22.
//

import Foundation

struct PestTruck: Codable, Identifiable {
    var id: Int
    var name: String?
    var image: String
    var season: Int
    
    static let example = PestTruck(id: 1, name: "Rat's all Folks! EXTERMINATORS", image: "https://bobsburgers-api.herokuapp.com/images/pestControlTruck/1.jpg", season: 1)
}
