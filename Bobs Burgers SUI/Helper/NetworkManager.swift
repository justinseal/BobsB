//
//  NetworkManager.swift
//  Bobs Burgers SUI
//
//  Created by Justin Seal on 3/29/22.
//

import Foundation

final class NetworkManager {
    
    static let shared = NetworkManager()
    
    private let baseURL = "https://bobsburgers-api.herokuapp.com/"
    
    func fetch<T: Decodable>(from url: URL) async throws -> [T] {
        let (data, _) = try await URLSession.shared.data(from: url)
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode([T].self, from: data)
        }
    }
    
    func getCharacters() async throws -> [Character] {
        let endpoint = baseURL + "characters?sortby=name"
        
        guard let url = URL(string: endpoint) else {
            throw AlertContext.badData
        }
        return try await fetch(from: url)
        
        }

    func getStores() async throws -> [Store] {
        let endpoint = baseURL + "storeNextDoor?&limit=20"
        
        guard let url = URL(string: endpoint) else {
            throw AlertContext.badData
        }
        
       return try await fetch(from: url)
    }
    
    func getTrucks() async throws -> [PestTruck] {
        let endPoint = baseURL + "pestControlTruck/"
        
        guard let url = URL(string: endPoint) else {
            throw AlertContext.badData
        }
        return try await fetch(from: url)
    }
}
