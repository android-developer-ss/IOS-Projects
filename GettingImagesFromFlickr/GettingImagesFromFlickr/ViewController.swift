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
        setUIEnabled(false)
        getImageFromFlickr()
    }

    fileprivate func setUIEnabled(_ enabled: Bool) {
        imageName.isEnabled = enabled
        getNextImageButton.isEnabled = enabled
        
        if enabled {
            getNextImageButton.alpha = 1.0
        } else {
            getNextImageButton.alpha = 0.5
        }
    }
    
    
    
    
    fileprivate func escapedParameters(_ parameters: [String:AnyObject]) -> String {
        
        if parameters.isEmpty {
            return ""
        } else {
            var keyValuePairs = [String]()
            
            for (key, value) in parameters {
                
                // make sure that it is a string value
                let stringValue = "\(value)"
                
                // escape it
                let escapedValue = stringValue.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)
                
                // append it
                keyValuePairs.append(key + "=" + "\(escapedValue!)")
                
            }
            
            return "?\(keyValuePairs.joined(separator: "&"))"
        }
    }

}

