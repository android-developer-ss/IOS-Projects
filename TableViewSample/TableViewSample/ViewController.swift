//
//  ViewController.swift
//  TableViewSample
//
//  Created by Snehal Sutar on 8/8/16.
//  Copyright © 2016 Snehal Sutar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let myFavouriteThings: [String] = [
    "Hi",
    "HO",
    "How are you",
    "I am good",
    "Tinkerbell",
    "Frozen",
    "Elsa",
    "Madagascar",
    "Pirates of Carribean",
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.myFavouriteThings.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell! = tableView.dequeueReusableCellWithIdentifier("FavouriteThingsCell", forIndexPath: indexPath)
        
        cell.textLabel?.text =  self.myFavouriteThings[indexPath.row]
        return cell
    }

}

