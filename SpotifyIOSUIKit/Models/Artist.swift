//
//  Artist.swift
//  SpotifyUIKitTutorial
//
//  Created by Ivan Christian on 02/06/22.
//

import Foundation

struct Artist : Codable {
    let id : String
    let name : String
    let type : String
    let external_urls : [String: String]
    
}
