//
//  ItemCellTableViewCell.swift
//  DreamListerCore
//
//  Created by Snehal Sutar on 10/18/16.
//  Copyright © 2016 Snehal Sutar. All rights reserved.
//

import UIKit

class ItemCellTableViewCell: UITableViewCell {

    @IBOutlet weak var thumb: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var details: UILabel!
    
    func configureCell(item: Item){
        title.text = item.title
        price.text = "$\(item.price)"
        details.text = item.details
    }
}
