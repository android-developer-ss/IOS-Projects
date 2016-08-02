//
//  ViewController.swift
//  ClickCounter
//
//  Created by Snehal Sutar on 8/1/16.
//  Copyright © 2016 Snehal Sutar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var label = UILabel()
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //LABEL initialization and adding it to view..
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        self.view.addSubview(label)
        
        // Button initialization and adding it to view
        let button = UIButton()
        button.frame=CGRectMake(50, 150, 60, 60)
        button.setTitle("Click", forState: .Normal)
        button.setTitleColor(UIColor.cyanColor(), forState: .Normal)
        button.addTarget(self, action: #selector(ViewController.increamentCount), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button)
    }
    
    func increamentCount(){
        self.count += 1
        self.label.text = "\(self.count)"
    }
}

