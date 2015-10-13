//
//  SettingsViewController.swift
//  gotcha
//
//  Created by Bingyao Li on 10/13/15.
//  Copyright © 2015 Bingyao Li. All rights reserved.
//

import UIKit
class SettingsViewController: UITableViewController {
    
    weak var cancelButtonDelegate: CancelButtonDelegate?
    
    var userInfo = ["Avatar","Name","Email","Password","Gender","Year","Major","Score"]
    
    @IBAction func CancelPressed(sender: AnyObject) {
        cancelButtonDelegate?.cancelButtonPressedFrom(self)
        
    }
    //    ----------------draw table-------------------------//
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // dequeue the cell from our storyboard
        let cell = tableView.dequeueReusableCellWithIdentifier("SettingsDetailCell")! as! SettingsDetailCell
        
        // if the cell has a text label, set it to the model that is corresponding to the row in array
        cell.infoTitle.text = userInfo[indexPath.row];
        
        // return cell so that Table View knows what to draw in each row
        return cell
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return userInfo.count;
    }//draw table
}
