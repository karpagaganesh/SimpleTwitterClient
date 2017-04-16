//
//  Constants.swift
//  SimpleTwitterClient
//
//  Created by Patchirajan, Karpaga Ganesh on 4/16/17.
//  Copyright © 2017 Patchirajan, Karpaga Ganesh. All rights reserved.
//

import UIKit
import BDBOAuth1Manager

class Constants: NSObject {

    static let TWITTER_API_BASE = "https://api.twitter.com"
    static let TWITTER_CLIENT = BDBOAuth1SessionManager(baseURL: NSURL(string: TWITTER_API_BASE)! as URL!, consumerKey:"VghTOrO51Lr23CIcwZTgNAzaV",
                                                        consumerSecret:"x9IlA7FImUPxZY9GuTUufca5Rkj0cMvYMWJ4kBYq82yG7jKjiV")
    static let API_VERIFY_CREDENTIALS = "1.1/account/verify_credentials.json"
    static let API_HOME_TIMELINE = "1.1/account/home_timeline.json"
    static let OAUTH_ACCESS_TOKEN = "oauth/access_token"
    static let OAUTH_REQUEST_TOKEN = "oauth/request_token"
    static let POST = "POST"
    static let GET = "GET"
}
