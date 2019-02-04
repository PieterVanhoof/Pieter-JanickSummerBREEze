//
//  MapViewController.swift
//  Pieter&JanickSummerBREEze
//
//  Created by mobapp12 on 04/02/2019.
//  Copyright © 2019 mobapp12. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate,CLLocationManagerDelegate {
    @IBOutlet weak var mapView: MKMapView!
    var pins:[Annotations] = [Annotations]()
    var  myLocationManager: CLLocationManager = CLLocationManager.init()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myLocationManager.delegate = self
        myLocationManager.requestWhenInUseAuthorization()
        
        let mainStage = Annotations.init(coordinate: CLLocationCoordinate2D.init(latitude: 51.152315, longitude: 2.722328	), title: "Mainstage", subtitle: "playtime 14:00-23:59", img: "Stage.jpg")
        let slamStage = Annotations.init(coordinate: CLLocationCoordinate2D.init(latitude: 51.151504, longitude: 2.720252	), title: "Slamstage", subtitle: "This is were the slamming happens", img: "SLAMMER.jpg")
        let toilet = Annotations.init(coordinate: CLLocationCoordinate2D.init(latitude: 51.152295 , longitude: 2.721786), title: "Toilets", subtitle: "Free toilets", img: "WC.jpg")
        let BeerTasting = Annotations.init(coordinate: CLLocationCoordinate2D.init(latitude: 51.151801, longitude: 2.723279), title: "Beers!", subtitle: "Get your cold ones here!", img: "BEERresize.jpg")
    pins += [mainStage,slamStage,toilet,BeerTasting]
        mapView.addAnnotations(pins)
        // Do any additional setup after loading the view.
       // let zoomLocation = MKC
        
        mapView.region = MKCoordinateRegion.init(center:  CLLocationCoordinate2D.init(latitude: 51.152315, longitude: 2.722328), latitudinalMeters: 400, longitudinalMeters: 400)
    }
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        //uitvoeren indien gebruiker toestemming geeft
        if (status == .authorizedWhenInUse || status == .authorizedAlways){
            
            myLocationManager.startUpdatingLocation()
            
            mapView.showsUserLocation = true
        }
        if(status == .denied){
            
        }
        if(status == .notDetermined){
            myLocationManager.requestWhenInUseAuthorization()
        }
        
    }
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if let myAnnotations = annotation as? Annotations{
            
            if let customView = mapView.dequeueReusableAnnotationView(withIdentifier: "pin"){
                customView.annotation = myAnnotations
                return customView
            }else{
                //pin bestond niet dus opbouwen in code
                let customView = MKAnnotationView.init(annotation: myAnnotations, reuseIdentifier: "pin")
                customView.image = UIImage.init(named: myAnnotations.img!)
                customView.canShowCallout = true
                
                return customView
                
                
                
            }
        }
        return nil
    }


}
