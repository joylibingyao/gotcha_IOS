//
//  MomentViewController.swift
//  gotcha
//
//  Created by Bingyao Li on 10/1/15.
//  Copyright © 2015 Bingyao Li. All rights reserved.
//

import UIKit

class MomentTableViewController:UITableViewController {
    var moments = [
        ["name":"Joy","text":"I want ice cream","numLike":7,"commNum":15],
        ["name":"Simo","text":"I want ice cream too","numLike":9,"commNum":8]
    ];
    override func viewDidLoad() {
        super.viewDidLoad()
        print("entered moment")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //    ----------------draw table-------------------------//
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // dequeue the cell from our storyboard
        let cell = tableView.dequeueReusableCellWithIdentifier("MomentCell") as! MomentCell
        
        cell.name.setTitle("Joy", forState:.Normal);
        // if the cell has a text label, set it to the model that is corresponding to the row in array
        
        
        // return cell so that Table View knows what to draw in each row
        return cell
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1;
    }//draw table

}
