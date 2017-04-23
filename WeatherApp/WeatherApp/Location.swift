//
//  Location.swift
//  WeatherApp
//
//  Created by Snehal Sutar on 11/12/16.
//  Copyright © 2016 Snehal Sutar. All rights reserved.
//

import Foundation
import CoreLocation

// Singleton class example..
class Location {
    static var sharedInstance = Location()
    private init(){}
    
    var latitude: Double!
    var longitude: Double!
    
}
