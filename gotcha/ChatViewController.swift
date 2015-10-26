//
//  ChatViewController.swift
//  gotcha
//
//  Created by Bingyao Li on 10/2/15.
//  Copyright © 2015 Bingyao Li. All rights reserved.
//

import UIKit
class ChatViewController:UITableViewController,CancelButtonDelegate {
    var quotesArray = [
        ["quote": "Some text here", "author": "Some guy"],
        ["quote": "Some text here", "author": "Some guy"],
        ["quote": "Some text here", "author": "Some guy"]
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Let's chat")
        tableView.dataSource = self;
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //    ----------------draw table-------------------------//
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // dequeue the cell from our storyboard
        let cell = tableView.dequeueReusableCellWithIdentifier("ChatListCell")! as! ChatListCell
        
        // if the cell has a text label, set it to the model that is corresponding to the row in array
        cell.name.text = quotesArray[indexPath.row]["author"]
        
        // return cell so that Table View knows what to draw in each row
        return cell
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return quotesArray.count; 
    }//draw table
    
    func cancelButtonPressedFrom(controller: UIViewController) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ClickedChatList" {
            print("clicked chat list")
            let navigationController = segue.destinationViewController as! UINavigationController
            let controller = navigationController.topViewController as! SingleChatRoomViewController
            controller.cancelButtonDelegate = self
        }
    }
    
}
