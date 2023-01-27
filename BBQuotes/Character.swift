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
    let image: URL
    let nickname: String
    let portrayedBy: String
    
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
