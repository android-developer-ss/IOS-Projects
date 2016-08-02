//
//  ViewController.swift
//  SwitchSample
//
//  Created by Snehal Sutar on 8/1/16.
//  Copyright © 2016 Snehal Sutar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIImageView!
    @IBOutlet weak var redColorSwitch: UISwitch!
    @IBOutlet weak var greenColorSwitch: UISwitch!
    @IBOutlet weak var blueColorSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeColorComponent(sender: AnyObject) {
        
        let r: CGFloat = self.redColorSwitch.on ? 1 : 0
        let g: CGFloat = self.greenColorSwitch.on ? 1 : 0
        let b: CGFloat = self.blueColorSwitch.on ? 1 : 0
        
        colorView.backgroundColor = UIColor(red: r, green:g, blue:b, alpha: 1)
    }
}

