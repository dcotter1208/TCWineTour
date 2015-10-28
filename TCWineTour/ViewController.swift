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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        chateauChantal.getPlaceInfo(chateauChantal.placeID)
        twoLads.getPlaceInfo(twoLads.placeID)
        
        let camera = GMSCameraPosition.cameraWithLatitude(44.865389, longitude: -85.520597, zoom: 11)
        let mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        mapView.myLocationEnabled = true
    
        self.view = mapView
        
        let chateauChantalMarker = Marker(place: chateauChantal)
        chateauChantalMarker.map = mapView
        
        let twoLadsMarker = Marker(place: twoLads)
        twoLadsMarker.map = mapView


        func map(mapView: GMSMapView!, didTapInfoWindowOfMarker marker: GMSMarker!) {
            
            performSegueWithIdentifier(<#T##identifier: String##String#>, sender: <#T##AnyObject?#>)
        
        
        }
        
    }
    
}




