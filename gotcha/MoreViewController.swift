//
//  MoreViewController.swift
//  gotcha
//
//  Created by Bingyao Li on 10/13/15.
//  Copyright © 2015 Bingyao Li. All rights reserved.
//

import UIKit
class MoreViewController:UIViewController,CancelButtonDelegate {
    func cancelButtonPressedFrom(controller: UIViewController) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Entered More")

        
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    segue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ClickedSettings" {
            let navigationController = segue.destinationViewController as! UINavigationController
            let controller = navigationController.topViewController as! SettingsViewController
            controller.cancelButtonDelegate = self
        }
    }
    
    
    
}
