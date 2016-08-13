//
//  ViewController.swift
//  TableViewNavigation
//
//  Created by Snehal Sutar on 8/9/16.
//  Copyright © 2016 Snehal Sutar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let favouriteThingsArray: [String] = [
    "Hello",
    "Hi",
    "Barbie",
    "Tinker","Celena",
    "Gomez","Elsa",
    "Anna","Olaf",
    "Turbo","Hello",
    "Hi",
    "Kung Fu Panda"
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
        return self.favouriteThingsArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("FavouriteThings", forIndexPath: indexPath)
        cell.textLabel?.text = self.favouriteThingsArray[indexPath.row]
        return cell
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let detailViewController = self.storyboard!.instantiateViewControllerWithIdentifier("DetailViewController") as! DetailViewController
        detailViewController.labelContent = self.favouriteThingsArray[indexPath.row]
        self.navigationController?.pushViewController(detailViewController, animated: true)
    }

}

