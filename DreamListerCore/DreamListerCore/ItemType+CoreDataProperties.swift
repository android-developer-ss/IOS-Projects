//
//  ItemType+CoreDataProperties.swift
//  DreamListerCore
//
//  Created by Snehal Sutar on 10/18/16.
//  Copyright © 2016 Snehal Sutar. All rights reserved.
//

import Foundation
import CoreData
import 

extension ItemType {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ItemType> {
        return NSFetchRequest<ItemType>(entityName: "ItemType");
    }

    @NSManaged public var type: String?
    @NSManaged public var toItem: Item?

}
