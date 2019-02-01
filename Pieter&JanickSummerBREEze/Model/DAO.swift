//
//  DAO.swift
//  Pieter&JanickSummerBREEze
//
//  Created by mobapp12 on 01/02/2019.
//  Copyright © 2019 mobapp12. All rights reserved.
//

import Foundation

class DAO{
    
    var data:[LineUpCategorie]
    
    init(){
        //variabelen aanmaken
        
        //ZATERDAG
        //zaterdag mainstage
        
        let nekrogoblicon = Band.init(name: "Nekrogoblicon", time: "14:00-16:00", img: "nekro.jpg", youtubeURL: URL.init(string: "https://youtu.be/Yk1WCupiHOI")!, about: "" )
        
        let slayer = Band.init(name: "Slayer", time: "17:00-19:00", img: "slayer.jpg", youtubeURL: URL.init(string: "https://youtu.be/yjb0j9l1sz4")!, about: "" )
        
        //Zaterdag SlamStage
        let withinDestruction = Band.init(name: "Within Destruction", time: "14:00-16:00", img: "WD.jpg", youtubeURL: URL.init(string: "https://youtu.be/ySH3f_3NyjU")!, about: "" )
        
        let kraanium = Band.init(name: "Kraanium", time: "17:00-19:00", img: "Kraanium.jpg", youtubeURL: URL.init(string: "https://youtu.be/GcmFq6qHCIY")!, about: "" )
        
        let archspires = Band.init(name: "Archspire", time: "20:00-22:00", img: "archspire.jpg", youtubeURL: URL.init(string: "https://youtu.be/1lsnTQyGI78")!, about: "" )
        //ZONDAG
        //zondag mainstage
        
        let alestorm = Band.init(name: "Alestorm", time: "14:00-16:00", img: "alestorm.jpg", youtubeURL: URL.init(string: "https://youtu.be/-r8jlHDBMsw")!, about: "" )
        
        let lambOfGod = Band.init(name: "Lamb of God", time: "17:00-19:00", img: "LoG.jpg", youtubeURL: URL.init(string: "https://youtu.be/ZPzsx3AdHpw")!, about: "" )
        //zondag SlamStage
        let ringsOfSaturn = Band.init(name: "Rings Of Saturn", time: "09:00-19:00", img: "Rings.jpg", youtubeURL: URL.init(string: "https://youtu.be/J91Lo1wTR1A")!, about: "" )
        
        let  pAndJExperience = Band.init(name: "P&J Experience", time: "20:00-22:00", img: "SLAM.jpg", youtubeURL: URL.init(string: "https://youtu.be/QiFBgtgUtfw")!, about: "" )
        
        
        //aanmaken categorie dagen/podia
        //zaterdag
        let zaterdagMain = LineUpCategorie.init(name: "Zaterdag Mainstage!")
        zaterdagMain.bandLijst += [nekrogoblicon, slayer]
        
        let zaterdagSlam = LineUpCategorie.init(name: "Zaterdag SlamStage!")
        zaterdagSlam.bandLijst += [withinDestruction, kraanium, archspires]
        
        //zondag
        let zondagMain = LineUpCategorie.init(name: "Zondag Mainstage!")
        zondagMain.bandLijst += [alestorm, lambOfGod]
        
        let zondagSlam = LineUpCategorie.init(name: "Zondag SlamStage!")
        zondagSlam.bandLijst += [ringsOfSaturn, pAndJExperience]

        
        //variabelen effectief gebruiken
        self.data = [zaterdagMain, zaterdagSlam, zondagMain, zondagSlam]
    }
}
