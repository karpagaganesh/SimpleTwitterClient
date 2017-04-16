//
//  TweetsViewController.swift
//  SimpleTwitterClient
//
//  Created by Patchirajan, Karpaga Ganesh on 4/16/17.
//  Copyright © 2017 Patchirajan, Karpaga Ganesh. All rights reserved.
//

import UIKit

class TweetsViewController: UIViewController {

    
    var twitterRestClient = TwitterRestClient.singletonInstance
    var tweets = [Tweet]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        twitterRestClient.retreiveHomeTimeline(success: { (tweets: [Tweet]) in
            self.tweets = tweets
        }) { (error: Error) in
            print (error.localizedDescription)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
