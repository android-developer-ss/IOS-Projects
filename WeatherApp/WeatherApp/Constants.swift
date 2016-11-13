//
//  Constants.swift
//  WeatherApp
//
//  Created by Snehal Sutar on 11/9/16.
//  Copyright © 2016 Snehal Sutar. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
//let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?cnt=15&lat=\(Location.sharedInstance.latitude!)lon=\(Location.sharedInstance.longitude!)&appid=9f794057afa0fb0175a1623f2dc4b496"

let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?cnt=10&lat=42.3392956&lon=-87.9045751&appid=9f794057afa0fb0175a1623f2dc4b496"

let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "9f794057afa0fb0175a1623f2dc4b496"

let CURRENT_WEATHER_URL  = "\(BASE_URL)\(LATITUDE)\(Location.sharedInstance.latitude!)\(LONGITUDE)\(Location.sharedInstance.longitude!)\(APP_ID)\(API_KEY)"

typealias DownloadComplete = () -> ()
