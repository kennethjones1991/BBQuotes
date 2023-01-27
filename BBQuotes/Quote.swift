//
//  Quote.swift
//  BBQuotes
//
//  Created by Kenneth Jones on 1/27/23.
//

import Foundation

struct Quote: Codable {
    let quote: String
    let author: String
    let series: String
    
    enum QuoteKeys: String, CodingKey {
        case quote
        case author
        case series
    }
    
    init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        let quoteContainer = try container.nestedContainer(keyedBy: QuoteKeys.self)
        
        quote = try quoteContainer.decode(String.self, forKey: .quote)
        author = try quoteContainer.decode(String.self, forKey: .author)
        series = try quoteContainer.decode(String.self, forKey: .series)
    }
}
