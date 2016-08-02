//
//  ViewController.swift
//  ClickCounterViaStoryBoard
//
//  Created by Snehal Sutar on 8/1/16.
//  Copyright © 2016 Snehal Sutar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    @IBOutlet var label:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func increamentCount(){
        self.count+=1
        self.label.text = "\(self.count)"
    }

}

