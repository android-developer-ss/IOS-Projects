//
//  YellowVC.swift
//  UnwindSample
//
//  Created by Snehal Sutar on 11/16/16.
//  Copyright © 2016 Snehal Sutar. All rights reserved.
//

import UIKit

class YellowVC: UIViewController {
    
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "yellowToRedSegue" {
            let redVC = segue.destination as? RedVC
            redVC?.senderText = "Hi From yellow"
        }
    }
    
    // segue ViewControllerB -> ViewController
    @IBAction func unwindToThisView(sender: UIStoryboardSegue) {
        if let sourceViewController = sender.source as? RedVC {
            self.textLabel.text = sourceViewController.senderText
        }
    }
    
}
