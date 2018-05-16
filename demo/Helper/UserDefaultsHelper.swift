//
//  UserDefaultsHelper.swift
//  demo
//
//  Created by Dobariya, Chetankumar || mytheresa.com on 09.05.18.
//  Copyright © 2018 Chetan. All rights reserved.
//

import UIKit

/// Type-safe storing and reading of objects in user defaults.
class UserDefaultsHelper {
    
    private var favouriteURL: String?
    
    enum Keys: String {
        
        case isFavourite
        case cookies
        case userAgent = "UserAgent"
        case forcedUpdate
        case favouriteURL
        case onBoardingComplete
        case currentLanguageCode
    }
    
    static var onBoardingComplete: Bool {
        
        get {
            return UserDefaults.standard.bool(forKey: Keys.onBoardingComplete.rawValue)
        }
        
        set {
            UserDefaults.standard.set(newValue, forKey: Keys.onBoardingComplete.rawValue)
        }
    }
    
    static var isFavourite: Bool {
        
        get {
            return UserDefaults.standard.bool(forKey: Keys.favouriteURL.rawValue)
        }
        
        set {
            UserDefaults.standard.set(newValue, forKey: Keys.favouriteURL.rawValue)
        }
    }
    
 
    
    static var cookies: [[HTTPCookiePropertyKey: Any]]? {
        
        get {
            return UserDefaults.standard.object(forKey: Keys.cookies.rawValue) as? [[HTTPCookiePropertyKey: Any]]
        }
        
        set {
            UserDefaults.standard.set(newValue, forKey: Keys.cookies.rawValue)
        }
    }
    
    static var userAgent: String? {
        
        get {
            return UserDefaults.standard.object(forKey: Keys.userAgent.rawValue) as? String
        }
        
        set {
            if let userAgent = newValue {
                
                UserDefaults.standard.register(defaults: ["UserAgent": userAgent])
            }
        }
    }
    
    static var currentLanguageCode: String? {
        
        get {
            return UserDefaults.standard.object(forKey: Keys.currentLanguageCode.rawValue) as? String
        }
        
        set {
            UserDefaults.standard.set(newValue, forKey: Keys.currentLanguageCode.rawValue)
        }
    }
    
    static var forcedUpdate: Int64?
    {
        get {
            return UserDefaults.standard.object(forKey: Keys.forcedUpdate.rawValue) as? Int64
        }
        
        set {
            UserDefaults.standard.set(newValue, forKey: Keys.forcedUpdate.rawValue)
        }
        
    }
    
}
