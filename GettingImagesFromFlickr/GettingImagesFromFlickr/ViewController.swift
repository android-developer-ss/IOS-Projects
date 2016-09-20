//
//  ViewController.swift
//  GettingImagesFromFlickr
//
//  Created by Snehal Sutar on 8/17/16.
//  Copyright © 2016 Snehal Sutar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageName: UITextField!
    @IBOutlet weak var getNextImageButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func getNextImageAction(_ sender: AnyObject) {
    }

}

