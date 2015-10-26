//
//  ContactViewController.swift
//  gotcha
//
//  Created by Bingyao Li on 10/23/15.
//  Copyright © 2015 Bingyao Li. All rights reserved.
//

import UIKit

class ContactViewController:UITableViewController,CancelButtonDelegate {
    
    weak var cancelButtonDelegate: CancelButtonDelegate?
    
    let headerTitles = ["Group Name", "Friend"]

    
    var data=[
        ["Band","concert buddy"],
        ["Joy","Steve","Simo","Brian","John"]
    ]

    
    @IBAction func CancelPressed(sender: AnyObject) {
        
        cancelButtonDelegate?.cancelButtonPressedFrom(self)
        
    }
    
    //    ----------------draw table-------------------------//
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2;
    }
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section < headerTitles.count {
            return headerTitles[section]
        }
        
        return nil
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("ContactListCell")! as! ContactListCell
        let section = data[indexPath.section]
        let name = section[indexPath.row]
        
        cell.contactName.text = name
        return cell
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return data[section].count;
    }//draw table
    
        func cancelButtonPressedFrom(controller: UIViewController) {
    dismissViewControllerAnimated(true, completion: nil)
}

override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if segue.identifier == "ClicledContactName" {
        print("clicked contact name list")
        let navigationController = segue.destinationViewController as! UINavigationController
        let controller = navigationController.topViewController as! SingleChatRoomViewController
        controller.cancelButtonDelegate = self
    }
}
}
