//
//  ItemDetailsVC.swift
//  DreamListerCore
//
//  Created by Snehal Sutar on 10/24/16.
//  Copyright © 2016 Snehal Sutar. All rights reserved.
//

import UIKit
import CoreData

class ItemDetailsVC: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var storePicker: UIPickerView!
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var priceField: UITextField!
    @IBOutlet weak var detailsView: UITextField!
    @IBOutlet weak var thumbImage: UIImageView!
    
    var stores = [Store]()
    var storeNames:[String] = ["Best Buy", "Macys", "JCPenney", "Walmart", "Kohls", "Sears", "Amazon", "KMart"]
    var itemToEdit: Item?
    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        if let topItem = self.navigationController?.navigationBar.topItem{
            topItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
        }
        storePicker.dataSource = self
        storePicker.delegate = self
        
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
        //createStores()
        getStores()
        if itemToEdit != nil {
            loadItemData()
        }
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
        var item: Item!
        let picture = Image(context: context)
        picture.image = thumbImage.image
        
        if(itemToEdit == nil) {
            item = Item(context : context)
        } else {
            item = itemToEdit
        }
        
        item.toImage = picture

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
    
    
    
    func loadItemData(){
        if let item = itemToEdit {
            titleField.text = item.title
            priceField.text = "\(item.price)"
            detailsView.text = item.details
            thumbImage.image = item.toImage?.image as? UIImage
            
            if let store = item.toStore {
                var index = 0
                repeat {
                    let s = stores[index]
                    if s.name == store.name{
                        //storePicker.selectedRow(inComponent: index)
                        storePicker.selectRow(index, inComponent: 0, animated: true)
                        break
                    }
                    print("store picker count" + "\(storePicker.numberOfComponents)")
                    index += 1
                } while(index < stores.count)
            }
        }
    }
    
    
    @IBAction func deletePressed(_ sender: UIBarButtonItem) {
        if itemToEdit != nil {
            context.delete(itemToEdit!)
            ad.saveContext()
        }
        _ = navigationController?.popViewController(animated: true)
    }
    
    
    
    @IBAction func addImage(_ sender: UIButton) {
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let img = info[UIImagePickerControllerOriginalImage] as? UIImage{
            thumbImage.image = img
        }
        imagePicker.dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
