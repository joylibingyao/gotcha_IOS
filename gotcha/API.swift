//
//  API.swift
//  gotcha
//
//  Created by Li Xiang on 11/29/15.
//  Copyright © 2015 Bingyao Li. All rights reserved.
//

import UIKit

class APII {
    
    
    static var baseURL = "http://127.0.0.1:3000"
    
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
    
    
    //This function is for sending JSON to serverside
    static func postJSONData(data:NSDictionary,command:String){
        let urlPath = baseURL+command_dic[command]!
        let url = NSURL(string: urlPath)
        
        var request = NSMutableURLRequest(URL: url!)
        var session = NSURLSession.sharedSession()
        request.HTTPMethod = "POST"
        do{request.HTTPBody = try NSJSONSerialization.dataWithJSONObject(data, options: NSJSONWritingOptions.init(rawValue: <#T##UInt#>))}
        catch _{request.HTTPBody = nil
        }
        
        var task = session.dataTaskWithRequest(request, completionHandler: {
            
             (data,response,error) in
            print("Task completed")
            print(data)
            //var json = NSJSONSerialization.JSONObjectWithData(data!, options: .MutableLeaves)
        })
        task.resume()
    }

}





