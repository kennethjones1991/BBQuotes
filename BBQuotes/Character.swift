//
//  Character.swift
//  BBQuotes
//
//  Created by Kenneth Jones on 1/27/23.
//

import Foundation

struct Character: Codable {
    let name: String
    let birthday: String
    let occupation: [String]
    let image: URL // TODO: just change this to match what they give us; doesn't matter; that way we don't have to do any computed properties
    let nickname: String
    let portrayedBy: String // TODO: same here, just change it to match what they have in the online API
    
    // TODO: get rid of the code underneath here
    enum CharacterKeys: String, CodingKey {
        case name
        case birthday
        case occupation
        case image = "img"
        case nickname
        case portrayedBy = "portrayed"
    }
    
    init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        let characterContainer = try container.nestedContainer(keyedBy: CharacterKeys.self)
        
        name = try characterContainer.decode(String.self, forKey: .name)
        birthday = try characterContainer.decode(String.self, forKey: .birthday)
        occupation = try characterContainer.decode([String].self, forKey: .nickname)
        image = try characterContainer.decode(URL.self, forKey: .image)
        nickname = try characterContainer.decode(String.self, forKey: .nickname)
        portrayedBy = try characterContainer.decode(String.self, forKey: .portrayedBy)
    }
}
