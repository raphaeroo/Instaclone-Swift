//
//  AuthManager.swift
//  Instagram
//
//  Created by Raphael Freitas da Silva on 07/03/23.
//

import FirebaseAuth

public class AuthManager {
  static let shared = AuthManager()
  
  // MARK: - Public
  public func registerNewUser(username: String, email: String, password: String) {}
  
  public func loginUser(username: String?, email: String?, password: String) {}
}
