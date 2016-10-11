//
//  ViewController.swift
//  ScrollViewSample
//
//  Created by Snehal Sutar on 10/10/16.
//  Copyright © 2016 Snehal Sutar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var images = [UIImageView]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for x in 0...2{
            let image = UIImage(named: "icon\(x).png")
            images.append(UIImageView(image:image))
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

