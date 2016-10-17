//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Snehal Sutar on 10/16/16.
//  Copyright © 2016 Snehal Sutar. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var partyRocks = [PartyRock]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        
        let videoURL = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/CvPdtf8Ijj4\" frameborder=\"0\" allowfullscreen></iframe>"
        
        let p1 = PartyRock(imageURL: "http://media2.intoday.in/indiatoday/images/stories/breakup-song_647_101316015253.jpg", videoURL: videoURL, videoTitle: "The Breakup Song - Ae Dil Hai Mushkil")
        
        let p2 = PartyRock(imageURL: "http://timesofindia.indiatimes.com/thumb/msid-53839504,width-400,resizemode-4/53839504.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/HgIW7P4dsXU\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Nachde Ne Saare")
        
        let p3 = PartyRock(imageURL: "http://www.lyricsol.com/wp-content/uploads/2016/02/kar-gayi-chull.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/-sWXx1mbgtU\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Kar Gayi Chull - Kapoor & Sons")
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p1)
        partyRocks.append(p1)
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        <#code#>
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyTableViewCell {
            let partyRock = partyRocks[indexPath.row]
            cell.updateUI(partyRock: partyRock)
            return cell
        } else{
            return UITableViewCell()
        }
    }
}

