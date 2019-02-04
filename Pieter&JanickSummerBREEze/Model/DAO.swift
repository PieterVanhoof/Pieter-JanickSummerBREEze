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
        
        let nekrogoblicon = Band.init(name: "Nekrogoblicon", time: "14:00-16:00", img: "nekro.jpg", youtubeURL: URL.init(string: "https://youtu.be/Yk1WCupiHOI")!, about: "Nekrogoblikon is an American melodic death metal band based in Los Angeles, California. The group was formed in 2006, by Tim Lyakhovetskiy and Nicky Calonne. The band has released four full-length albums, Goblin Island, Stench, Heavy Meta, and Welcome to Bonkers and one EP, Power. The band's music centers around goblins." )
        
        let slayer = Band.init(name: "Slayer", time: "17:00-19:00", img: "slayer.jpg", youtubeURL: URL.init(string: "https://youtu.be/yjb0j9l1sz4")!, about: "Slayer is an American thrash metal band from Huntington Park, California. The band was formed in 1981 by vocalist and bassist Tom Araya and guitarists Kerry King and Jeff Hanneman. Slayer's fast and aggressive musical style made them one of the founding big four bands of thrash metal, alongside Metallica, Megadeth and Anthrax. Slayer's current lineup comprises King, Araya, drummer Paul Bostaph and guitarist Gary Holt. Hanneman and drummers Dave Lombardo and Jon Dette are former members of the band." )
        
        //Zaterdag SlamStage
        let withinDestruction = Band.init(name: "Within Destruction", time: "14:00-16:00", img: "WD.jpg", youtubeURL: URL.init(string: "https://youtu.be/ySH3f_3NyjU")!, about: "This band goes hella hard. You better be ready if you are going to check these guys out. Lords Of The BREEEEEE" )
        
        let kraanium = Band.init(name: "Kraanium", time: "17:00-19:00", img: "Kraanium.jpg", youtubeURL: URL.init(string: "https://youtu.be/GcmFq6qHCIY")!, about: "The gods of the slam-scene. This is one band that willnever get arrested by the slam police" )
        
        let archspires = Band.init(name: "Archspire", time: "20:00-22:00", img: "archspire.jpg", youtubeURL: URL.init(string: "https://youtu.be/1lsnTQyGI78")!, about: "Archspire is a Canadian technical death metal band from Vancouver, British Columbia. They are currently signed to Season of Mist. The group has released three studio albums." )
        //ZONDAG
        //zondag mainstage
        
        let alestorm = Band.init(name: "Alestorm", time: "14:00-16:00", img: "alestorm.jpg", youtubeURL: URL.init(string: "https://youtu.be/-r8jlHDBMsw")!, about: "Drink, Drink,Drink, Drink, Drink, Drink, Drink, Drink, Drink, Drink, Drink, Drink, Drink, Drink, Drink, Drink AHOY!!!" )
        
        let lambOfGod = Band.init(name: "Lamb of God", time: "17:00-19:00", img: "LoG.jpg", youtubeURL: URL.init(string: "https://youtu.be/ZPzsx3AdHpw")!, about: "Lamb of God (sometimes abbreviated as LoG) is an American heavy metal band from Richmond, Virginia. Formed in 1994 as Burn the Priest, the group consists of bassist John Campbell, drummer Chris Adler, vocalist Randy Blythe, and guitarists Mark Morton and Willie Adler. The band is considered a significant member of the New Wave of American Heavy Metal movement. Since their formation, Lamb of God has released eight studio albums, one live album, one compilation album and three DVDs. The band's cumulative sales equal almost two million in the United States, including one album certified Gold by the RIAA. In 2010 and 2011 the band received Grammy nominations for songs from their 2009 album Wrath. They also received a nomination in 2016 for their song 512. Lamb of God has toured with the Ozzfest twice. Other appearances include Download Festival and Sonisphere Festival in the UK, Soundwave Festival, Mayhem Festival 2010 and Gigantour. From 2008 to 2010 they toured as part of Metallica's World Magnetic Tour." )
        //zondag SlamStage
        let ringsOfSaturn = Band.init(name: "Rings Of Saturn", time: "09:00-19:00", img: "Rings.jpg", youtubeURL: URL.init(string: "https://youtu.be/J91Lo1wTR1A")!, about: "Hours upon hours of super fast mind melting, vomit inducing riffage... They be rlly good.." )
        
        let  pAndJExperience = Band.init(name: "P&J Experience", time: "20:00-22:00", img: "SLAM.jpg", youtubeURL: URL.init(string: "https://youtu.be/QiFBgtgUtfw")!, about: "Side project made by the legendary guitar players Pieter and Janick. this band needs no description" )
        
        
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
