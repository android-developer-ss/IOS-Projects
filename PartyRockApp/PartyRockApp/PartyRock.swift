//
//  PartyRock.swift
//  PartyRockApp
//
//  Created by Snehal Sutar on 10/16/16.
//  Copyright © 2016 Snehal Sutar. All rights reserved.
//

import Foundation

class PartyRock{
    private var _imageURL:String!
    private var _videoURL:String!
    private var _videoTitle:String!
    
    init(imageURL:String, videoURL:String, videoTitle:String) {
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitle = videoTitle
    }
    
    var imageURL : String {
        return _imageURL
    }
    
    var videoURL : String{
        return _videoURL
    }
    
    var videoTitle : String {
        return _videoTitle
    }
    
}
