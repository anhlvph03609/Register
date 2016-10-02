//
//  ViewController.swift
//  Registers
//
//  Created by Anh Lê Việt on 10/2/16.
//  Copyright © 2016 Anh Lê Việt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    @IBOutlet weak var txtUsername: UITextField!
    
    
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    
    @IBOutlet weak var sliAge: UISlider!
    
    
    @IBAction func btnReg(_ sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
                        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
       
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defaults = UserDefaults.standard
        defaults.setValue(txtUsername.text, forKey: "username")
        defaults.setValue(txtPassword.text, forKey: "password")
        defaults.setValue(txtEmail.text, forKey: "email")
        
    }
}

