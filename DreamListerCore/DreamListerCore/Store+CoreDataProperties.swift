//
//  Store+CoreDataProperties.swift
//  DreamListerCore
//
//  Created by Snehal Sutar on 10/18/16.
//  Copyright © 2016 Snehal Sutar. All rights reserved.
//

import Foundation
import CoreData
import 

extension Store {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Store> {
        return NSFetchRequest<Store>(entityName: "Store");
    }

    @NSManaged public var name: String?
    @NSManaged public var toImage: Image?
    @NSManaged public var toItem: Item?

}
