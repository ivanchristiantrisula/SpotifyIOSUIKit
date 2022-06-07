//
//  Profile.swift
//  SpotifyUIKitTutorial
//
//  Created by Ivan Christian on 02/06/22.
//

import Foundation

struct UserProfile: Codable {
    let id : String
    let country : String
    let email : String
    let display_name : String
    let explicit_content : [String : Bool]
    let external_urls : [String: String]
    let product : String
    let images : [APIImage]?
    
}


