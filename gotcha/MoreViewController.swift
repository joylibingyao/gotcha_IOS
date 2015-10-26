//
//  MoreViewController.swift
//  gotcha
//
//  Created by Bingyao Li on 10/13/15.
//  Copyright © 2015 Bingyao Li. All rights reserved.
//

import UIKit
class MoreViewController:UIViewController,CancelButtonDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("entered More")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func cancelButtonPressedFrom(controller: UIViewController) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ClickedSettings" {
            print("clicked setting")
            let navigationController = segue.destinationViewController as! UINavigationController
            let controller = navigationController.topViewController as! SettingsViewController
            controller.cancelButtonDelegate = self
        }
        if segue.identifier == "ClickedContact" {
            print("clicked contact")
            let navigationController = segue.destinationViewController as! UINavigationController
            let controller = navigationController.topViewController as! ContactViewController
            controller.cancelButtonDelegate = self
        }
    }
}