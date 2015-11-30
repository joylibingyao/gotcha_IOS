//
//  API.swift
//  gotcha
//
//  Created by Li Xiang on 11/29/15.
//  Copyright © 2015 Bingyao Li. All rights reserved.
//

import UIKit

class APII {
    
    static var command_dic = [
        "me":"/api/0.1/user/me",
        "moments":"/api/0.1/user/me/moments",
        "test":"/api/0.1/user/test"
        
        
    ];
    
    
    
    static func getUserData(command:String) {
        var urlPath = "http://127.0.0.1:3000"+command_dic[command]!
//        var plus = command_dic["me"];
        let url = NSURL(string: urlPath)
        
        let session = NSURLSession.sharedSession()
        let task = session.dataTaskWithURL(url!,
            completionHandler:  {
                (data,
                response,
                error ) in
                print("Task completed")
                print(data)
                let jsonObject : AnyObject?
                do {jsonObject = try NSJSONSerialization.JSONObjectWithData(data!,options:NSJSONReadingOptions.MutableContainers )
                    if let results = jsonObject as? NSDictionary {
                        print(results)
                        print("here")
                    }
                    else {
                        print("Error in NSJSONSerialization")
                    }
                }
                catch _ {
                    jsonObject = nil
                    print("mm")
                }
                
        })
        task.resume()
    }
}
