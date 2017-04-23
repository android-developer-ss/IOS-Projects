//
//  ViewController.swift
//  CustomPopOver
//
//  Created by Snehal Sutar on 11/14/16.
//  Copyright © 2016 Snehal Sutar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "popoverSegue" {
             let popoverViewController = segue.destination as! UIViewController
                popoverViewController.modalPresentationStyle = UIModalPresentationStyle.popover
                popoverViewController.popoverPresentationController!.delegate = self
            
        }
    }
    
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return UIModalPresentationStyle.none
    }
}

