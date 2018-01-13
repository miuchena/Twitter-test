//
//  SplashViewController.swift
//  Twitter_test
//
//  Created by Anastasia Krasnova on 15/11/2017.
//  Copyright © 2017 Anastasia Krasnova. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController, TwitterLoginDelegate {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if (!appDelegate.splashDelay) {
            delayWithSeconds(1, completion: {
            self.continueLogin()
                })
        }
    }
        
        func goToLogin() {
            self.performSegue(withIdentifier: "LoginSegue", sender: self)
        }
    
    func continueLogin() {
        appDelegate.splashDelay = false
        self.goToLogin()
    }


}
