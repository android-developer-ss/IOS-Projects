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
    
    @IBOutlet weak var outputLabel: UITextField!
    
    enum Operation : String{
        case Divide = "/"
        case Multiply = "*"
        case Add = "+"
        case Subtract = "-"
        case Equal = "="
        case Empty = ""
    }
    
    // Variables to perform operations
    var runningNumber = ""
    var leftValStr = ""
    var rightValStr = ""
    var result = ""
    var currentOperation = Operation.Empty
    
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
        runningNumber += "\(sender.tag)"
        outputLabel.text = runningNumber
    }
    
    func playSound(){
        if(buttonSound.isPlaying){
            buttonSound.stop()
        }
        buttonSound.play()
    }
    
    
    @IBAction func addOperation(_ sender: AnyObject) {
        processOperation(operation: Operation.Add)
    }
    
    @IBAction func subtractOperation(_ sender: AnyObject) {
        processOperation(operation: Operation.Subtract)
    }
    
    @IBAction func divideOperation(_ sender: AnyObject) {
        processOperation(operation: Operation.Divide)
    }
    
    @IBAction func multiplyOperation(_ sender: AnyObject) {
        processOperation(operation: Operation.Multiply)
    }
    
    @IBAction func equalsOperation(_ sender: AnyObject) {
        processOperation(operation: Operation.Equal)
    }
    
    // When Add, Substract, multiply, Divide operations clicked process the data.
    func processOperation(operation: Operation){
        playSound()
        if(currentOperation != Operation.Empty){
            if(runningNumber != ""){
                rightValStr = runningNumber
                runningNumber = ""
                if(currentOperation == Operation.Add){
                    result = "\(Double(leftValStr)! + Double(rightValStr)!)"
                } else if(currentOperation == Operation.Subtract){
                    result = "\(Double(leftValStr)! - Double(rightValStr)!)"
                } else if(currentOperation == Operation.Multiply){
                    result = "\(Double(leftValStr)! * Double(rightValStr)!)"
                } else if (currentOperation == Operation.Divide){
                    result = "\(Double(leftValStr)! / Double(rightValStr)!)"
                }
//                else if(currentOperation == Operation.Equal){
//                    outputLabel.text = result
//                }
                
                leftValStr = result
                outputLabel.text = result
                
            }
            currentOperation = operation
        } else {
            leftValStr = runningNumber
            runningNumber = ""
            currentOperation = operation
        }
    }
    
}

