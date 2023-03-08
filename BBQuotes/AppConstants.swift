//
//  AppConstants.swift
//  BBQuotes
//
//  Created by Kenneth Jones on 3/7/23.
//

import Foundation

struct AppConstants {
    static let bbName = "Breaking Bad"
    static let bcsName = "Better Call Saul"
}

extension String {
    var lowerNoSpaces: String {
        self.lowercased().filter { $0 != " " }
    }
}
