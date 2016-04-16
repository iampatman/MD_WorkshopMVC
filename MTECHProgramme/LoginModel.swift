//
//  LoginModel.swift
//  Login
//
//  Created by Nguyen Bui An Trung on 14/4/16.
//  Copyright © 2016 Nguyen Bui An Trung. All rights reserved.
//

import Foundation

class LoginModel {
    func verifyUserIDandPassword(userID: String, password: String) -> Bool {
        if (userID == password) {
            return true
        } else {
            return false
        }
    }
}