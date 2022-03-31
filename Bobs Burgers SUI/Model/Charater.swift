//
//  Charater.swift
//  Bobs Burgers SUI
//
//  Created by Justin Seal on 3/29/22.
//

import SwiftUI

struct Character: Codable {
    let id: Int
    let name: String
    let image: URL
    let gender: String
    let hairColor: String
    let occupation: String
    let url: URL
}
