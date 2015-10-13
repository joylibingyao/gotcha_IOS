//
//  SingleChatRoom.swift
//  gotcha
//
//  Created by Bingyao Li on 10/13/15.
//  Copyright © 2015 Bingyao Li. All rights reserved.
//

import UIKit

class  SingleChatRoomViewController:UITableViewController{
     weak var cancelButtonDelegate: CancelButtonDelegate?
    
    @IBAction func BackPressed(sender: AnyObject) {
        cancelButtonDelegate?.cancelButtonPressedFrom(self)
    }
}
