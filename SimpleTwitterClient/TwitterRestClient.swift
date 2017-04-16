//
//  TwitterRestClient.swift
//  SimpleTwitterClient
//
//  Created by Patchirajan, Karpaga Ganesh on 4/16/17.
//  Copyright © 2017 Patchirajan, Karpaga Ganesh. All rights reserved.
//

import UIKit

class TwitterRestClient: NSObject {

    static func verifyCredentials() -> Void {
        Constants.TWITTER_CLIENT?.get(Constants.API_VERIFY_CREDENTIALS, parameters: nil, progress: nil, success: { (task: URLSessionDataTask, response: Any) -> Void in
            let user = response as! NSDictionary
            
        }, failure: {(task: URLSessionDataTask?, error: Error) -> Void in
            
        })
    }
    
    static func retreiveHomeTimeline() -> Void {
        Constants.TWITTER_CLIENT?.get(Constants.API_HOME_TIMELINE, parameters: nil, progress: nil, success: { (task: URLSessionDataTask, response: Any) -> Void in
            let tweets = response as! [NSDictionary]
            
        }, failure: { (task: URLSessionDataTask?, error: Error) -> Void in
            
        })

    }
}
