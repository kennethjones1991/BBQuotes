//
//  Quote.swift
//  BBQuotes
//
//  Created by Kenneth Jones on 1/27/23.
//

import Foundation

struct Quote: Codable { // TODO: probably should just make these Decodable since we don't use encodable
    let quote: String
    let author: String
    let series: String
    
    // TODO: we can legit get rid of everything under this and the app will still work exactly the same IF we try to decode an array of Quote instead of just a Quote; see TODO in FetchController
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
