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
        if let temp = weatherDict["temp"] as? Dictionary<String, AnyObject> {
            
            if let min = temp["min"] as? Double {
                let kelvinToFarenheitPreDivision = (min * (9/5) - 459.67)
                let kelvinToFarenheit = Double(round(10 * kelvinToFarenheitPreDivision/10))
                self._lowTemp = "\(kelvinToFarenheit)"            }
            
            if let max = temp["max"] as? Double {
                let kelvinToFarenheitPreDivision = (max * (9/5) - 459.67)
                let kelvinToFarenheit = Double(round(10 * kelvinToFarenheitPreDivision/10))
                self._highTemp = "\(kelvinToFarenheit)"            }
        }
        // Weather type parsing
        if let weather = weatherDict["weather"] as? [Dictionary<String, AnyObject>] {
            if let weatherType = weather[0]["main"] as? String {
                self._weatherType = weatherType
            }
        }
        
        // Date parsing
        if let dateString = weatherDict["dt"] as? Double {
            let unixConvertedDate = Date(timeIntervalSince1970: dateString)
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .full
            dateFormatter.dateFormat = "EEEE"
            dateFormatter.timeStyle = .none
            self._date = unixConvertedDate.dayOfTheWeek()
        }
    }
}

extension Date {
    func dayOfTheWeek() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self)
    }
}
