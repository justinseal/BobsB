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
    
    func getCharacters() async throws -> [Character] {
        let endpoint = baseURL + "characters?sortby=name"
        
        guard let url = URL(string: endpoint) else {
            throw AlertContext.badData
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode([Character].self, from: data)
        } catch {
            throw AlertContext.badData
        }
    }
    
    func getStores() async throws -> [Store] {
        let endpoint = baseURL + "storeNextDoor?&limit=20"
        
        guard let url = URL(string: endpoint) else {
            throw AlertContext.badData
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode([Store].self, from: data)
        } catch {
            throw AlertContext.badData
        }
    }
}
