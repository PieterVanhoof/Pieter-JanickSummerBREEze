//
//  Band.swift
//  Pieter&JanickSummerBREEze
//
//  Created by mobapp12 on 01/02/2019.
//  Copyright © 2019 mobapp12. All rights reserved.
//

import Foundation

class Band{
    var name:String
    var time:String
    var img:String
    var youtubeURL:URL
    var about:String
    
    init(name:String, time:String, img:String, youtubeURL:URL, about:String){
        self.name = name
        self.time = time
        self.img = img
        self.youtubeURL = youtubeURL
        self.about = about
        
    }
}

