//
//  DatabaseManager.swift
//  Instagram
//
//  Created by Raphael Freitas da Silva on 07/03/23.
//

import FirebaseDatabase

public class DatabaseManager {
  static let shared = DatabaseManager()
  
  private let database = Database.database().reference()
  
  // MARK: - Public
  
  /// Check if the username and email is available
  /// - Parameters
  ///   - email: String representing email
  ///   - username: String representing username
  public func canCreateNewUser(with email: String, username: String, completion: @escaping (Bool) -> Void) {
    completion(true)
  }
  
  /// Inserts new user data to database
  /// - Parameters
  ///   - email: String representing email
  ///   - username: String representing username
  ///   - completion: Async callback for result if database succeed
  public func insertNewUser(with email: String, username: String, completion: @escaping (Bool) -> Void) {
    database.child(email.safeDatabaseKey()).setValue(["username": username]) { error, _ in
      if error == nil {
        completion(true)
        return
      } else {
        completion(false)
        return
      }
    }
  }
}
