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
        setupUI()
    }
}

extension ViewController {
    
    private func setupUI() {
        self.title = "AcctionLabs Login"
    }
}


extension ViewController {
    
    @IBAction func signIn(sender: Any) {
        
        GIDSignIn.sharedInstance.signIn(with: Configuration.signInConfig, presenting: self) { user, error in
            guard error == nil else { return }
            
            // If sign in succeeded, display the app's main content View.
            
            if let detailsVC = self.storyboard?.instantiateViewController(withIdentifier: "DetailsVC") as? DetailsVC {
                detailsVC.signedInUser = user
                self.navigationController?.pushViewController(detailsVC, animated: true)
            }
            
        }
    }
}

