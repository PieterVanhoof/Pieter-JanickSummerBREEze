//
//  LineUpCategorie.swift
//  Pieter&JanickSummerBREEze
//
//  Created by mobapp12 on 01/02/2019.
//  Copyright © 2019 mobapp12. All rights reserved.
//

import Foundation
class LineUpCategorie{
    var name:String
    var bandLijst:[Band]
    
    init(name:String){
        self.name = name
        bandLijst = [Band]()
    }
}
