//
//  ViewController.swift
//  Instagram
//
//  Created by Raphael Freitas da Silva on 07/03/23.
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
  }
  
  private func handleNotAuthenticated() {
    // Check auth status
    if Auth.auth().currentUser == nil {
      // Show login
      let loginVC = LoginViewController()
      loginVC.modalPresentationStyle = .fullScreen
      present(loginVC, animated: false)
    }
  }

}

