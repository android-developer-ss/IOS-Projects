//
//  ViewController.swift
//  TableViewAndActivityIndicator
//
//  Created by Snehal Sutar on 12/30/16.
//  Copyright © 2016 Snehal Sutar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func showActivityIndicator(_ uiView: UIView) {
        let container: UIView = UIView()
        container.frame = uiView.frame
        container.center = uiView.center
        container.backgroundColor = UIColor.blue
//        let loadingView: UIView = UIView()
//        loadingView.frame =  CGRect(x: 0, y: 0, width: 80, height: 80)
//        loadingView.center = uiView.center
//        loadingView.backgroundColor = UIColor.brown //UIColorFromHex(0x444444, alpha: 0.7)
//        loadingView.clipsToBounds = true
//        loadingView.layer.cornerRadius = 10
        
//        let actInd: UIActivityIndicatorView = UIActivityIndicatorView()
        activityIndicator.frame = CGRect(x: 0.0, y: 0.0, width: 40.0, height: 40.0);
        activityIndicator.activityIndicatorViewStyle =
            UIActivityIndicatorViewStyle.whiteLarge
        activityIndicator.center = CGPoint(x: container.frame.size.width / 2,
                                    y: container.frame.size.height / 2);
//        loadingView.addSubview(activityIndicator)
        container.addSubview(activityIndicator)
        uiView.addSubview(container)
        activityIndicator.startAnimating()
    }

    @IBAction func buttonClick(_ sender: Any) {
        showActivityIndicatory(self.view)
    }
    
}

