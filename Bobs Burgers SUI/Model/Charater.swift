//
//  Charater.swift
//  Bobs Burgers SUI
//
//  Created by Justin Seal on 3/29/22.
//

import SwiftUI

struct Character: Codable, Identifiable {
        
    var id: Int
    var name: String
    var image: String
    var gender: String?
    var hairColor: String?
    var occupation: String?
    var url: String
    var voicedBy: String?
        
}
