//
//  FetchController.swift
//  BBQuotes
//
//  Created by Kenneth Jones on 1/27/23.
//

import Foundation

struct FetchController {
    enum NetworkError: Error {
        case badURL, badResponse
    }
    
    private let baseURL = URL(string: "https://www.breakingbadapi.com/api/")!
    
    func fetchQuote() async throws -> Quote {
        let quoteURL = baseURL.appendingPathComponent("quote/random")
        
        let (data, response) = try await URLSession.shared.data(from: quoteURL)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw NetworkError.badResponse
        }
        
        let quote = try JSONDecoder().decode(Quote.self, from: data) // TODO: If we decode [Quote].self instead of Quote.self, we can get rid of the enum and init in the Quote model
        
        return quote
    }
    
    func fetchCharacter(name: String) async throws -> Character {
        let characterURL = baseURL.appendingPathComponent("characters")
        var characterComponents = URLComponents(url: characterURL, resolvingAgainstBaseURL: true)
        let characterQueryItem = URLQueryItem(name: "name", value: name)
        characterComponents?.queryItems = [characterQueryItem]
        
        guard let searchURL = characterComponents?.url else {
            throw NetworkError.badURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: searchURL)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw NetworkError.badResponse
        }
        
        let character = try JSONDecoder().decode(Character.self, from: data) // TODO: same here. See comment above about decoding Quote
        
        return character
    }
}
