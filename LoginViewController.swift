//
//  LoginViewController.swift
//  Registers
//
//  Created by Anh Lê Việt on 10/2/16.
//  Copyright © 2016 Anh Lê Việt. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    
    
    var name : String = ""
    var pass : String = ""
    var email : String = ""
    var alert : UIAlertView =  UIAlertView()
    let userInfor  = UserDefaults.standard
    
    @IBOutlet weak var txtUsername: UITextField!
    
    
    @IBOutlet weak var txtPass: UITextField!
    var user = User()
    
    @IBAction func btnLogin(_ sender: AnyObject) {
        if txtUsername.text! == user.username && txtPass.text! == user.password {
            alert.title = "Login successfull"
            alert.message = user.showInfor()
            alert.addButton(withTitle: "OK")
            alert.show()
        }
        else {
            alert.title =  "Error"
            alert.message = "wrong username or password"
            alert.addButton(withTitle: "Ok")
            alert.show()        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = UserDefaults.standard
        let name  = defaults.value(forKey: "username") as! String
        let pass = defaults.value(forKey: "password") as! String
        let email = defaults.value(forKey: "email") as! String
        
        user = User(email: email,password: pass,username: name)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
