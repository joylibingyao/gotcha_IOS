//
//  MomentCell.swift
//  gotcha
//
//  Created by Bingyao Li on 10/1/15.
//  Copyright © 2015 Bingyao Li. All rights reserved.
//

import UIKit

class MomentCell:UITableViewCell {
    
    @IBOutlet var avatar: UIButton!
    
    @IBOutlet var name: UIButton!
    @IBOutlet var texts: UITextView!
    @IBOutlet var img: UITableView!
    
    @IBOutlet var likeNum: UILabel!
    @IBOutlet var commentNum: UIButton!
    
    @IBAction func likePressed(sender: UIButton) {
    }
    @IBAction func commentPressed(sender: UIButton) {
    }
}
