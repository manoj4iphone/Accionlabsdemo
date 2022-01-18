//
//  ViewController.swift
//  AccionLabsDemo
//
//  Created by Manoj on 15/01/22.
//

import UIKit
import GoogleSignIn

class ViewController: ParentViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}



extension ViewController {
    
    
    @IBAction func signIn(sender: Any) {
        
        GIDSignIn.sharedInstance.signIn(with: Configuration.signInConfig, presenting: self) { user, error in
            guard error == nil else { return }
            
            // If sign in succeeded, display the app's main content View.
        }
    }
        
    @IBAction private func signInTapped(sender: UIButton) {
        
//        Configuration.oktaOdic.signInWithBrowser(from: self) { [weak self] (stateManager, error) in
//            
//            guard error == nil else {
//                return
//            }
//
//            stateManager?.writeToSecureStorage()
//
//            // #2 Use tokens
//            print("access token is: \(stateManager?.accessToken ?? "accesstoken not found")")
//            print("id token is: \(stateManager?.idToken ?? "idtoken not found")")
//            print("refresh token is: \(stateManager?.refreshToken ?? "refresh token not found")")
//
//        }
    }
    
}

