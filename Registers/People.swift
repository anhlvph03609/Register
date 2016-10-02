//
//  People.swift
//  Registers
//
//  Created by Anh Lê Việt on 10/2/16.
//  Copyright © 2016 Anh Lê Việt. All rights reserved.
//

import Foundation
class People {
    
    var username : String = ""
    
    init() {
    
    }
    init(username:String){
        
        self.username = username
    }
    
    func showInfor() -> String{
        return  "\n address: " + self.username
    }
}
