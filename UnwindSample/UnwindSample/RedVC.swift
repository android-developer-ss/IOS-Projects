//
//  RedVC.swift
//  UnwindSample
//
//  Created by Snehal Sutar on 11/16/16.
//  Copyright © 2016 Snehal Sutar. All rights reserved.
//

import UIKit

class RedVC: UIViewController {
    
    var senderText: String?
    
    @IBOutlet weak var backToYellowButton: UIButton!
//    @IBAction func unwindToThisViewController(segue: UIStoryboardSegue) {
//
//        if let yellowVC = unwindToThisViewController(segue: UIStoryboardSegue)  {
//            print("Coming from Yellow")
//        }
//        else if let redViewController = unwindToThisViewController(segue: UIStoryboardSegue) as? BlueVC {
//            print("Coming from Blue")
//        }
//        if let blueViewController = unwindSegue.sourceViewController as? BlueViewController {
//            print("Coming from BLUE")
//        }
////        else if let redViewController = unwindSegue.sourceViewController as? RedViewController {
////            println("Coming from RED")
////        }
//    }
    
    @IBAction func unwindToThisView(sender: UIStoryboardSegue) {
//        if let sourceViewController = sender.source as? BlueVC {
         if sender.source is BlueVC {
//            dataRecieved = sourceViewController.dataPassed
        }
    }
    @IBAction func backToYellowPressed(_ sender: Any) {
        senderText = "Hellloooo from Redd.."
        //self.dismiss(animated: true, completion: nil)
    }
}
