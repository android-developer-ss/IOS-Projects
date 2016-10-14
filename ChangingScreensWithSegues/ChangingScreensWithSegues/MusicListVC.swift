//
//  MusicListVC.swift
//  ChangingScreensWithSegues
//
//  Created by Snehal Sutar on 10/13/16.
//  Copyright © 2016 Snehal Sutar. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.cyan

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func nextScreenButtonClicked(_ sender: AnyObject) {
        let songName = "Hello World"
        performSegue(withIdentifier: "MusicToSong", sender: songName)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationPlaySongVC = segue.destination as? PlaySongVC {
            if let song = sender as? String {
                destinationPlaySongVC.selectedSong = song
            }
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
