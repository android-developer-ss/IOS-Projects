//
//  ViewController.swift
//  RetroCalculator
//
//  Created by Snehal Sutar on 10/13/16.
//  Copyright © 2016 Snehal Sutar. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var buttonSound:AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "btn", ofType: "wav")
        let soundURL = URL(fileURLWithPath: path!)
        
        do{
            try buttonSound = AVAudioPlayer(contentsOf: soundURL)
            buttonSound.prepareToPlay()
        }catch let err as NSError{
            print(err.debugDescription)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func numberPressed(sender: UIButton){
        playSound()
    }
    
    func playSound(){
        if(buttonSound.isPlaying){
            buttonSound.stop()
        }
        buttonSound.play()
    }


}

