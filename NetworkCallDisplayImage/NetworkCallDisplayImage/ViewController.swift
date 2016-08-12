//
//  ViewController.swift
//  NetworkCallDisplayImage
//
//  Created by Snehal Sutar on 8/11/16.
//  Copyright © 2016 Snehal Sutar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let imageUrl = NSURL(string: "https://vignette3.wikia.nocookie.net/dfairies/images/0/08/Tinker_Bell_(Disney_Fairies).jpg")!
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(imageUrl) {
            (data , response, error) in
            if (error == nil){
                let downloadedImage = UIImage(data:data!)
                self.imageView.image = downloadedImage
            }
        }
        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

