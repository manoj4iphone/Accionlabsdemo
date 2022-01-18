//
//  DetailsVC.swift
//  AccionLabsDemo
//
//  Created by Manoj on 17/01/22.
//

import UIKit
import GoogleSignIn

class DetailsVC: ParentViewController {
    
    var signedInUser: GIDGoogleUser?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
}


extension DetailsVC {
    
    private func setupUI() {
        
        self.title = signedInUser?.profile?.name
        
        self.navigationItem.hidesBackButton = true
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(logoutUser))
    }
    
    @objc func logoutUser() {
        GIDSignIn.sharedInstance.signOut()
        self.navigationController?.popViewController(animated: true)
    }
}
