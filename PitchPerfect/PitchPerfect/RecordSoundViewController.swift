//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Snehal Sutar on 6/18/16.
//  Copyright © 2016 Snehal Sutar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        stopRecordingButton.enabled = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func recordAudio(sender: AnyObject) {
        print("Record button pressed")
        recordingLabel.text = "Recording in progress.."
        recordButton.enabled = false
        stopRecordingButton.enabled = true
    }
    
    override func viewWillAppear(animated: Bool) {
        print("View will appear")
    }
    
    override func viewDidAppear(animated: Bool) {
        print("View did appear")
    }
    
    @IBAction func stopRecording(sender: AnyObject) {
        recordButton.enabled = true
        stopRecordingButton.enabled = false
        recordingLabel.text = "Tap to record"
    }
    
}

