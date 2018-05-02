//
//  Constants.swift
//  Smack
//
//  Created by Valentinas Stripeika on 4/29/18.
//  Copyright © 2018 Valentinas Stripeika. All rights reserved.
//

import Foundation

typealias completionHandler = (_ Success: Bool) -> ()

//MARK: - URL Constants
let BASE_URL = "https://valsmackapp.herokuapp.com/v1/"
let REGISTER_URL = "\(BASE_URL)account/register"

//MARK: - Segues
let TO_LOGIN = "toLogin"
let TO_SIGNUP = "toSignup"
let UNWIND = "unwindToChannel"

//MARK: - User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"
