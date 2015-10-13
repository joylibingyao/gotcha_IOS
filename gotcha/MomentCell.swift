//
//  MomentCell.swift
//  gotcha
//
//  Created by Bingyao Li on 10/1/15.
//  Copyright © 2015 Bingyao Li. All rights reserved.
//


import UIKit
class MomentRowCell :UITableViewCell{
    
    @IBOutlet var avatar: UIImageView!
    
    @IBOutlet var name: UIButton!

    @IBOutlet var textView: UITextView!
    
    @IBOutlet var likeNum: UILabel!
    
    @IBOutlet var commNum: UIButton!
    
    @IBAction func lovePressed(sender: AnyObject) {
    }
    @IBAction func sayPressed(sender: UIButton) {
    }
    @IBOutlet var imgTableView: UITableView!
    
    

}