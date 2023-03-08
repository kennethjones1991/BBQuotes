//
//  Character.swift
//  BBQuotes
//
//  Created by Kenneth Jones on 1/27/23.
//

import Foundation

struct Character: Decodable {
    let name: String
    let birthday: String
    let occupation: [String]
    let img: URL
    let nickname: String
    let portrayed: String
}
