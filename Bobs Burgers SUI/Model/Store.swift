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
}
