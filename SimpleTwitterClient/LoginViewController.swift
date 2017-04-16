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
        let twitterClient = BDBOAuth1SessionManager(baseURL: NSURL(string: "https://api.twitter.com")! as URL!, consumerKey:"VghTOrO51Lr23CIcwZTgNAzaV",
            consumerSecret:"x9IlA7FImUPxZY9GuTUufca5Rkj0cMvYMWJ4kBYq82yG7jKjiV")
        
        twitterClient?.deauthorize()
        
        twitterClient?.fetchRequestToken(withPath: "oauth/request_token", method: "GET", callbackURL: nil, scope: nil, success: { (requestToken: BDBOAuth1Credential!) -> Void in
            print("I got a token")
            print(requestToken)
            let authTokenURL = "https://api.twitter.com/oauth/authorize?oauth_token=\(requestToken.token!)"
            print(authTokenURL)
        
            let url = NSURL(string : authTokenURL)!
            UIApplication.shared.openURL(url as URL)
            
        }, failure: { (error: Error!) -> Void in
            print("Error")
        })
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
