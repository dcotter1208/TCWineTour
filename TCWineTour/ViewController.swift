//
//  ViewController.swift
//  TCWineTour
//
//  Created by Donovan Cotter on 10/26/15.
//  Copyright © 2015 DonovanCotter. All rights reserved.
//


import UIKit
import GoogleMaps

class ViewController: UIViewController {
    
//    var placesClient: GMSPlacesClient?
//    let marker = GMSMarker()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        chateauChantal.getPlaceInfo(chateauChantal.placeID)
        
        let camera = GMSCameraPosition.cameraWithLatitude(44.865389,
            longitude: -85.520597, zoom: 11)
        let mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        mapView.myLocationEnabled = true
        self.view = mapView
        
        let marker = Marker(place: chateauChantal)
        marker.map = mapView
        
//        chateauChantal.setMarker(chateauChantal.position, title: "Chateau Chantal", map: mapView)
        
//        
//        let chateauChantalMarker = WineryMarker(position: CLLocationCoordinate2DMake(44.865389, -85.520597), title: "Chateau Chantal")
//        chateauChantalMarker.
////
//        let chataeuChanalmarker = GMSMarker()
//
//        
//        chataeuChanalmarker.position = CLLocationCoordinate2DMake(44.865389, -85.520597)
//        chataeuChanalmarker.title = "Chateau Chantal"
//        chataeuChanalmarker.snippet = "Winery"
//        chataeuChanalmarker.map = mapView


        
        
        
//        twoLads.position = CLLocationCoordinate2DMake(44.933800, -85.493137)
//        twoLads.title = "2 Lads"
//        twoLads.snippet = "Winery"
//        twoLads.map = mapView
////
        
    }
    
}




