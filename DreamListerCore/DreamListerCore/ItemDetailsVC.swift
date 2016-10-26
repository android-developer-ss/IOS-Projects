//
//  ItemDetailsVC.swift
//  DreamListerCore
//
//  Created by Snehal Sutar on 10/24/16.
//  Copyright © 2016 Snehal Sutar. All rights reserved.
//

import UIKit
import CoreData

class ItemDetailsVC: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var storePicker: UIPickerView!
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var priceField: UITextField!
    @IBOutlet weak var detailsView: UITextField!
    
    var stores = [Store]()
    var storeNames:[String] = ["Best Buy", "Macys", "JCPenney", "Walmart", "Kohls", "Sears", "Amazon", "KMart"]
    
    override func viewDidLoad() {
        if let topItem = self.navigationController?.navigationBar.topItem{
            topItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
        }
        storePicker.dataSource = self
        storePicker.delegate = self
        createStores()
        getStores()
    }
    
    func createStores(){
        for storeName in storeNames{
            let store = Store(context: context)
            store.name = storeName
        }
        ad.saveContext()
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
        
    }
    
    
    func getStores(){
        let fetchRequest : NSFetchRequest<Store> = Store.fetchRequest()
        do {
            self.stores = try context.fetch(fetchRequest)
            self.storePicker .reloadAllComponents()
        } catch {
            //handle the error
        }
    }
    @IBAction func savePressed(_ sender: AnyObject) {
        let item = Item(context : context)
        if let title = titleField.text {
            item.title = title
        }
        if let price = priceField.text {
            item.price = (price as NSString).doubleValue
        }
        if let details = detailsView.text{
            item.details = details
        }
        
        item.toStore = stores[storePicker.selectedRow(inComponent: 0)]
        ad.saveContext()
        _ = navigationController?.popViewController(animated: true)
    }
}
