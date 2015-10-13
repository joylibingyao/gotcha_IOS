//
//  MomentViewController.swift
//  gotcha
//
//  Created by Bingyao Li on 10/1/15.
//  Copyright © 2015 Bingyao Li. All rights reserved.
//

import UIKit

class MomentViewController:UIViewController,UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!

    @IBOutlet var imgTableView: UITableView!
    var moments = [
        ["name":"Joy","text":"I want ice cream","numLike":7,"commNum":15]
    ];
    override func viewDidLoad() {
        super.viewDidLoad()
        print("entered moment")
        tableView.dataSource = self;

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moments.count
    }
    // what cell should I display for each row?
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // dequeue the cell from our storyboard
        let cell = tableView.dequeueReusableCellWithIdentifier("MomentRowCell") as! MomentRowCell
        
        // if the cell has a text label, set it to the model that is corresponding to the row in array
        
        cell.name.setTitle("Joy", forState: .Normal)
        cell.textView.text = "CMPSC 360 MT is comming 😱 but im not ready~~~"

        
        
        // return cell so that Table View knows what to draw in each row
        return cell
    }

}
