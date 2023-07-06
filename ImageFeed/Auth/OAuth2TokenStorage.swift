//
//  OAuthTokenStorage.swift
//  ImageFeed
//
//  Created by DANCECOMMANDER on 02.07.2023.
//

import Foundation
import UIKit

class OAuth2TokenStorage {
    
    static let shared = OAuth2TokenStorage()
    private let defaults = UserDefaults.standard
    
    var token: String? {
        get {
            return defaults.string(forKey: "bearerToken")
        }
        set {
            defaults.set(newValue, forKey: "bearerToken")
        }
    }
}
