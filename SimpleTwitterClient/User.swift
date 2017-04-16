//
//  User.swift
//  SimpleTwitterClient
//
//  Created by Patchirajan, Karpaga Ganesh on 4/16/17.
//  Copyright © 2017 Patchirajan, Karpaga Ganesh. All rights reserved.
//

import UIKit

class User: NSObject {
    var name : String?
    var screenName : String?
    var profileURL : URL?
    var tagline: String?
    
    init(userDictionary : NSDictionary){
        self.name = userDictionary["name"] as? String
        self.screenName = userDictionary["screen_name"] as? String
        if let profileURLString = userDictionary["profile_image_url_https"] as? String {
            let profileURL = URL(string: profileURLString)
            self.profileURL = profileURL
        }
        self.tagline = userDictionary["description"] as? String
    }
}
