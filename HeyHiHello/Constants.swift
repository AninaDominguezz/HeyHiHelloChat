//
//  Constants.swift
//  HeyHiHello
//
//  Created by Anina Dominguez on 23/9/22.
//  Copyright © 2022 Anina Dominguez. All rights reserved.
//

struct K {
    static let appName = "👋🏼HeyHiHello"
    static let registerSegue = "RegisterToLogin"
    static let loginSegue = "LoginToChat"
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    
    struct BrandColors {
        static let beige = "BrandBeige"
        static let lightBeige = "BrandLightBeige"
        static let blue = "BrandBlue"
        static let lightBlue = "BrandLightBlue"
        static let accentColor = "AccentColor"
    }
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
    
}
