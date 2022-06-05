//
//  SettingsModel.swift
//  SpotifyIOSUIKit
//
//  Created by Ivan Christian on 05/06/22.
//

import Foundation

struct Section {
    let title: String
    let options : [Option]
}

struct Option {
    let title : String
    let handler : () -> Void
}
