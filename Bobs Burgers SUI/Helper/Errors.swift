//
//  Errors.swift
//  Bobs Burgers SUI
//
//  Created by Justin Seal on 3/31/22.
//

import SwiftUI

struct AlertItem: Identifiable, Error {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    
    static let badData = AlertItem(title: Text("Bad Data"), message: Text("This is bad"), dismissButton: .default(Text("Okay")))
}
