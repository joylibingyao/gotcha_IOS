//
//  ForgotViewController.swift
//  gotcha
//
//  Created by Bingyao Li on 10/26/15.
//  Copyright © 2015 Bingyao Li. All rights reserved.
//

import UIKit
class ForgotViewController:UIViewController {
    
    @IBOutlet var hiddenMessage: UILabel!
    
    
    weak var cancelButtonDelegate: CancelButtonDelegate?
    
    var emailExist=false;
    
    override func viewDidLoad() {
        hiddenMessage.hidden=true
    }
    
    @IBAction func BackPressed(sender: AnyObject) {
        
        cancelButtonDelegate?.cancelButtonPressedFrom(self)
        
    }
    // Begin| Action | Check Email exist
    @IBAction func sendEmailPressed(sender: UIButton) {
        hiddenMessage.hidden=false
        
//        check if email exist [socket]
//        and set hiddenMessage.text as following
        
        if(emailExist == true){
            hiddenMessage.text="Email sended"
        }else{
            hiddenMessage.text="Wrong Email. Try Again"
        }
        
    }
     // End | Action | Check Email exist
}
