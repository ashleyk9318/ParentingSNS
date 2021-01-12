//
//  ViewController.swift
//  ParentingSNS
//
//  Created by Ashley Kim on 1/4/21.
//
import FirebaseAuth
import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        handleNotAuthenticated()
        do {
            try Auth.auth().signOut()
        }
        catch {
            print("Failed to sign out")
        }
    }
    
    private func handleNotAuthenticated() {        
        // Check auth status
        if Auth.auth().currentUser == nil {
            // Show log in
            let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: false)
            
        }
    }

}

