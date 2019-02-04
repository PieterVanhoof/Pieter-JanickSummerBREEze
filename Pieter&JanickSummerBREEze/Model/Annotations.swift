//
//  Annotations.swift
//  Pieter&JanickSummerBREEze
//
//  Created by mobapp12 on 04/02/2019.
//  Copyright © 2019 mobapp12. All rights reserved.
//

import Foundation
import MapKit

class Annotations: NSObject,MKAnnotation{
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    var img: String?
    
    init(coordinate: CLLocationCoordinate2D, title:String, subtitle:String, img:String){
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
        self.img = img
        
    }
    
}

