//
//  Forecast.swift
//  WeatherApp
//
//  Created by Snehal Sutar on 11/10/16.
//  Copyright © 2016 Snehal Sutar. All rights reserved.
//

import UIKit
import Alamofire

class Forecast {
    var _date: String!
    var _weatherType: String!
    var _highTemp: String!
    var _lowTemp: String!
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        return _date
    }
    
    var weatherType: String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    
    var highTemp: String {
        if _highTemp == nil {
            _highTemp = ""
        }
        return _highTemp
    }
    
    var lowTemp: String {
        if _lowTemp == nil {
            _lowTemp = ""
        }
        return _lowTemp
    }
    
    init(weatherDict: Dictionary<String, AnyObject>){
        // Min and max temperature parsing
        if let temp = weatherDict["main"] as? Dictionary<String, AnyObject> {
            
            if let min = temp["temp_min"] as? Double {
                let kelvinToFarenheitPreDivision = (min * (9/5) - 459.67)
                let kelvinToFarenheit = Double(round(10 * kelvinToFarenheitPreDivision/10))
                self._lowTemp = "\(kelvinToFarenheit)"
            }
            
            if let max = temp["temp_max"] as? Double {
                let kelvinToFarenheitPreDivision = (max * (9/5) - 459.67)
                let kelvinToFarenheit = Double(round(10 * kelvinToFarenheitPreDivision/10))
                self._highTemp = "\(kelvinToFarenheit)"
            }
        }
        // Weather type parsing
        if let weather = weatherDict["weather"] as? Dictionary<String, AnyObject> {
            if let weatherType = weather["main"] as? String {
                self._weatherType = weatherType
            }
        }
        
        // Date parsing
        if let dateString = weatherDict["dt"] as? Double {
            self._date = dateString
        }
    }
}
