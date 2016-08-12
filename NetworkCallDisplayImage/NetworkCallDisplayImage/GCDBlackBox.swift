//
//  GCDBlackBox.swift
//  NetworkCallDisplayImage
//
//  Created by Snehal Sutar on 8/11/16.
//  Copyright © 2016 Snehal Sutar. All rights reserved.
//

import Foundation
func performUIUpdatesOnMain(updates: () -> Void) {
    dispatch_async(dispatch_get_main_queue()) {
        updates()
    }
}