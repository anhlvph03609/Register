//
//  User.swift
//  Registers
//
//  Created by Anh Lê Việt on 10/2/16.
//  Copyright © 2016 Anh Lê Việt. All rights reserved.
//

import Foundation

class User : People{
    var email : String = ""
    var password :  String = ""
    
    override init() {
        super.init()
    }
    
    init(email :  String, password : String , username: String)  {
        self.email = email
        self.password = password
        super.init( username: username)
    }
    
    
    override func showInfor() -> String {
            return "Username : " + username + "\n Email: " + email + "\n Passsword: " + password 
    }
}
