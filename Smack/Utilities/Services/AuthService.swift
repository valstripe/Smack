//
//  AuthService.swift
//  Smack
//
//  Created by Valentinas Stripeika on 5/1/18.
//  Copyright © 2018 Valentinas Stripeika. All rights reserved.
//

import Foundation
import Alamofire

class AuthService {
    static let instance = AuthService()
    
    let defaults = UserDefaults.standard
    
    //MARK: - Login Status
    var isLoggedIn: Bool {
        get {
            return defaults.bool(forKey: LOGGED_IN_KEY)
        }
        set {
            defaults.set(newValue, forKey: LOGGED_IN_KEY)
        }
    }
    //MARK: - Token
    var authToken: String {
        get {
            return defaults.value(forKey: TOKEN_KEY) as! String
        }
        set {
            defaults.set(newValue, forKey: TOKEN_KEY)
        }
    }
    
    //MARK: - Email
    var userEmail: String {
        get {
            return defaults.value(forKey: USER_EMAIL) as! String
        }
        set {
            defaults.set(newValue, forKey: USER_EMAIL)
        }
    }
    
    //MARK: - Register User
    func registerUser(email: String, password: String, completion: @escaping completionHandler) {
        let lowerCaseEmail = email.lowercased()
        
        let header = [
            "Content-Type": "application/json; charset=utf-8"
        ]
        
        let body: [String : Any] = [
            "email" : lowerCaseEmail,
            "password" : password
        ]
        
        Alamofire.request(REGISTER_URL, method: .post, parameters: body, encoding: JSONEncoding.default, headers: header).responseString { (response) in
            if response.result.error == nil {
                completion(true)
            } else {
                completion(false)
                debugPrint(response.result.error as Any)
            }
        }
    }
}
