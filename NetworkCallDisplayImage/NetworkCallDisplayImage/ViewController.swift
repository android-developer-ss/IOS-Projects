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
        
        let imageUrl = URL(string: "https://vignette3.wikia.nocookie.net/dfairies/images/0/08/Tinker_Bell_(Disney_Fairies).jpg")!
        
        let task = URLSession.shared.dataTask(with: imageUrl, completionHandler: {
            (data , response, error) in
            if (error == nil){
                let downloadedImage = UIImage(data:data!)
                
                performUIUpdatesOnMain {
                    self.imageView.image = downloadedImage
                }
            }
        }) 
        task.resume()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

