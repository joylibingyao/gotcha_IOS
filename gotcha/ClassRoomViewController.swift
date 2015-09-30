//
//  ClassRoomViewController.swift
//  gotcha
//
//  Created by Bingyao Li on 9/26/15.
//  Copyright © 2015 Bingyao Li. All rights reserved.
//

import UIKit

class ClassRoomViewController: UITableViewController {
    var classes = ["Math 200","CMPSC 360","CMPSC 122","HTD","filerting 101","SWag"]
    override func viewDidLoad() {
        super.viewDidLoad()
        print("entered class room")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //    ----------------draw table-------------------------//
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        // dequeue the cell from our storyboard
        let cell = tableView.dequeueReusableCellWithIdentifier("ClassCell") as! ClassCell
        
        // if the cell has a text label, set it to the model that is corresponding to the row in array
        cell.leftCell.setTitle(classes[(indexPath.row)*2], forState: .Normal)
        cell.rightCell.setTitle(classes[(indexPath.row)*2+1], forState: .Normal)
        
        // return cell so that Table View knows what to draw in each row
        return cell
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var row = classes.count/2
        return row;
    }//draw table
    
}