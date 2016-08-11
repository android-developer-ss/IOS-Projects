//
//  DetailViewController.swift
//  TableViewNavigation
//
//  Created by Snehal Sutar on 8/10/16.
//  Copyright © 2016 Snehal Sutar. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController: UIViewController{
    
    var labelContent : String = "SVS"
    
    @IBOutlet weak var favThingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        self.favThingLabel.text = labelContent
    }
    
    
}

