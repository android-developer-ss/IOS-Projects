//
//  ItemDetailsVC.swift
//  DreamListerCore
//
//  Created by Snehal Sutar on 10/24/16.
//  Copyright © 2016 Snehal Sutar. All rights reserved.
//

import UIKit

class ItemDetailsVC: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var storePicker: UIPickerView!
    @IBOutlet var titleField: UIView!
    @IBOutlet weak var priceField: UITextField!
    @IBOutlet weak var detailsView: UITextField!
    
    var stores = [Store]()
    
    override func viewDidLoad() {
        if let topItem = self.navigationController?.navigationBar.topItem{
            topItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
            
            storePicker.dataSource = self
            storePicker.delegate = self
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let store = stores[row]
        return store.name
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return stores.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        <#code#>
    }
}
