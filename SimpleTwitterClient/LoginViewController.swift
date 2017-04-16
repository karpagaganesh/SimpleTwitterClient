//
//  LoginViewController.swift
//  SimpleTwitterClient
//
//  Created by Patchirajan, Karpaga Ganesh on 4/16/17.
//  Copyright © 2017 Patchirajan, Karpaga Ganesh. All rights reserved.
//

import UIKit
import BDBOAuth1Manager

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onLoginButton(_ sender: Any) {
        Constants.TWITTER_CLIENT?.deauthorize()
        
        Constants.TWITTER_CLIENT?.fetchRequestToken(withPath: Constants.OAUTH_REQUEST_TOKEN,
                                         method: Constants.GET,
                                         callbackURL: URL(string: "twitterdemo://oauth")!,
                                         scope: nil,
                                         success: { (requestToken: BDBOAuth1Credential!) -> Void in
                                            let authTokenURL = Constants.TWITTER_API_BASE + "/oauth/authorize?oauth_token=\(requestToken.token!)"
                                        
                                            let url = URL(string : authTokenURL)!
                                            UIApplication.shared.openURL(url)
                                            
                                        }, failure: { (error: Error!) -> Void in
                                            
                                        })
    }
}
