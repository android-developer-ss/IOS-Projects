//
//  ItemDetailsVC.swift
//  DreamListerCore
//
//  Created by Snehal Sutar on 10/24/16.
//  Copyright © 2016 Snehal Sutar. All rights reserved.
//

import UIKit

class ItemDetailsVC: UIViewController {

    override func viewDidLoad() {
        if let topItem = self.navigationController?.navigationBar.topItem{
            topItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
        }
    }
}
