//
//  SignUpViewController.swift
//  gotcha
//
//  Created by Bingyao Li on 10/26/15.
//  Copyright © 2015 Bingyao Li. All rights reserved.
//

import UIKit
class SignUpViewController:UIViewController {
    var error=false
    
    @IBOutlet var hiddenMessage: UILabel!
    @IBOutlet var name: UITextField!
    @IBOutlet var email: UITextField!
    
    @IBOutlet var password: UITextField!
    
    @IBOutlet var confirmPassword: UITextField!
    
    @IBAction func registerPressed(sender: AnyObject) {
        //send all info to backend to check if
        if (error == true){//if user exist
            hiddenMessage.hidden=false
            hiddenMessage.text="User Already Existed"
        }
        else{
            self.performSegueWithIdentifier("RegisterSuccess", sender: nil)//send with userInfo eg:user id name password
        }
    }
    
    
    override func viewDidAppear(animated: Bool) {

//        hidden message should not appear
        hiddenMessage.hidden=true
    }
    override func viewWillAppear(animated: Bool) {
        hiddenMessage.hidden=true
    }
    
}
