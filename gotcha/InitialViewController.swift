//
//  InitialViewController.swift
//  gotcha
//
//  Created by Bingyao Li on 10/26/15.
//  Copyright © 2015 Bingyao Li. All rights reserved.
//

import UIKit
class InitialViewController:UIViewController,CancelButtonDelegate {
    
    var error=true
    
    @IBOutlet var hiddenMessage: UILabel!
    
    @IBOutlet var email: UITextField!
    @IBOutlet var password: UIView!
    
    @IBAction func fotgotPressed(sender: AnyObject) {
    }
    @IBAction func loginButtonPressed(sender: AnyObject) {
        //sned to back to validate info
    }
    
//  ------  Begin | Segue | forgot Passowrd ---------
    
    func cancelButtonPressedFrom(controller: UIViewController) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ClickedForgot" {
            print("clicked forgot Password")
            let navigationController = segue.destinationViewController as! UINavigationController
            let controller = navigationController.topViewController as! ForgotViewController
            controller.cancelButtonDelegate = self
        }

    }
    
//    Log in validation [Socket]
    @IBAction func logInPressed(sender: UIButton) {
        if(error==true){
            hiddenMessage.hidden=false
            hiddenMessage.text="Wrong Email or Password"
            
        }
        else{
            self.performSegueWithIdentifier("loginSuccess", sender: nil)//should send with userInfo
            
        }
        
    }
    


    override func viewDidLoad() {
        hiddenMessage.hidden=true
    }
    override func viewDidAppear(animated: Bool) {
        hiddenMessage.hidden=true
    }

    
    
}
