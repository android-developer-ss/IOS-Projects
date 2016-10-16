//
//  PartyTableViewCell.swift
//  PartyRockApp
//
//  Created by Snehal Sutar on 10/16/16.
//  Copyright © 2016 Snehal Sutar. All rights reserved.
//

import UIKit

class PartyTableViewCell: UITableViewCell {

    @IBOutlet weak var videoSongLabel: UILabel!
    
    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateUI(){
        
    }

}
