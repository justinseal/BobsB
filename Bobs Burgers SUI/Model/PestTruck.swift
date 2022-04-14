//
//  PestTruck.swift
//  Bobs Burgers SUI
//
//  Created by Justin Seal on 4/14/22.
//

import Foundation

class PestTruck: Codable, ObservableObject {
    var id: Int
    var name: String
    var image: String
    var season: String?
}
