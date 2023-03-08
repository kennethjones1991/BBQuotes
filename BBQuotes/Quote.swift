//
//  Quote.swift
//  BBQuotes
//
//  Created by Kenneth Jones on 1/27/23.
//

import Foundation

struct Quote: Decodable {
    let quote: String
    let author: String
    let series: String
}
