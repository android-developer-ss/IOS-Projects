//
//  ViewController.swift
//  MeMeProject
//
//  Created by Snehal Sutar on 6/23/16.
//  Copyright © 2016 Snehal Sutar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func experiment(sender: AnyObject) {
        let nextController = UIImagePickerController()
        self.presentViewController(nextController, animated:true, completion:nil)
    }
}

