//
//  RemoteNotificationDeepLink.swift
//  DeepLinkTesting
//
//  Created by Snehal Sutar on 12/7/16.
//  Copyright © 2016 Snehal Sutar. All rights reserved.
//

import UIKit

let RemoteNotificationDeepLinkAppSectionKey : String = "article"

class RemoteNotificationDeepLink: NSObject {
    
    var article : String = ""
    
    class func create(userInfo : [NSObject : AnyObject]) -> RemoteNotificationDeepLink?
    {
        let info = userInfo as NSDictionary
        
        let articleID = info.object(forKey: RemoteNotificationDeepLinkAppSectionKey) as! String
        
        var ret : RemoteNotificationDeepLink? = nil
        if !articleID.isEmpty
        {
            ret = RemoteNotificationDeepLinkArticle(articleStr: articleID)
        }
        
        var vc = UIViewController()
        
        // Handle Deep Link Data to present the Article passed through
        
        if articleID == "A"{
            vc = ViewControllerA()
        }
        else if articleID == "B"
        {
            vc = ViewControllerB()
        }
        else if articleID == "C"
        {
            vc = ViewControllerC()
        }
        
        DispatchQueue.main.async {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window?.addSubview(vc.view)
        }
        
        return ret
    }
    
    private override init(){
        self.article = ""
        super.init()
    }
    
     init(articleStr: String){
        self.article = articleStr
        super.init()
    }
    
    final func trigger()
    {
        DispatchQueue.main.async {
            //NSLog("Triggering Deep Link - %@", self)
            self.triggerImp()
                { (passedData) in
                    // do nothing
            }
        }
    }
    
     func triggerImp(completion: ((AnyObject?)->(Void)))
    {
        
        completion(nil)
    }
}

class RemoteNotificationDeepLinkArticle : RemoteNotificationDeepLink
{
    var articleID : String!
    
    internal override init(articleStr: String)
    {
        self.articleID = articleStr
        super.init(articleStr: articleStr)
    }
    
    internal override func triggerImp(completion: ((AnyObject?)->(Void)))
    {
        super.triggerImp()
            { (passedData) in
                
                var vc = UIViewController()
                
                // Handle Deep Link Data to present the Article passed through
                
                if self.articleID == "A"
                {
                    vc = ViewControllerA()
                }
                else if self.articleID == "B"
                {
                    vc = ViewControllerB()
                }
                else if self.articleID == "C"
                {
                    vc = ViewControllerC()
                }
                
//                let appDelegate = UIApplication.sharedApplication.delegate as! AppDelegate
//                appDelegate.window?.addSubview(vc.view)
                
                let appDelegate = UIApplication.shared.delegate as! AppDelegate
                appDelegate.window?.addSubview(vc.view)
                
                completion(nil)
        }
    }
    
}
