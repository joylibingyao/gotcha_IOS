//
//  MomentDetailViewController.swift
//  gotcha
//
//  Created by Bingyao Li on 10/3/15.
//  Copyright © 2015 Bingyao Li. All rights reserved.
//

import UIKit

class MomentDetailViewController: UITableViewController  {
    
    var comments = [
        ["name":"Simo","text":"Good Job"],
        ["name":"Simo","text":"Good Job"]
    ];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("entered moment detail")
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (section == 0){
            return 2
        }
        else if (section == 1){
            return comments.count
        }
        else{
            return 0;
        }
    }
    // what cell should I display for each row?
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // dequeue the cell from our storyboard
        if (indexPath.section == 0){
            let cell  = tableView.dequeueReusableCellWithIdentifier("ComImgCell") as! ComImgCell
            return cell
        }
        else  {
            let cell = tableView.dequeueReusableCellWithIdentifier("CommentCell") as! CommentCell
            cell.comText.text = comments[0]["name"]
            return cell
        }

        // if the cell has a text label, set it to the model that is corresponding to the row in array
        
        
        
        // return cell so that Table View knows what to draw in each row
//        return cell
        
    }
}
