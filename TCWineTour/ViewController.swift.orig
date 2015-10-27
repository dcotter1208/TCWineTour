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
    
    var placesClient: GMSPlacesClient?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        placesClient = GMSPlacesClient()
        
        let chateauChantal = "ChIJY5Cc60vTSk0R2VMNMeozAC4"
        
        placesClient!.lookUpPlaceID(chateauChantal, callback: { (place: GMSPlace?, error: NSError?) -> Void in
            if let error = error {
                print("lookup place id query error: \(error.localizedDescription)")
                return
            }
            
            if let place = place {
                print("Place name \(place.name)")
                print("Place address \(place.formattedAddress)")
                print("Place placeID \(place.placeID)")
                print("Place attributions \(place.attributions)")
            } else {
                print("No place details for \(chateauChantal)")
            }
        })

        
        var camera = GMSCameraPosition.cameraWithLatitude(44.865389,
            longitude: -85.520597, zoom: 11)
        var mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        mapView.myLocationEnabled = true
        self.view = mapView
        
        var marker = GMSMarker()
        marker.position = CLLocationCoordinate2DMake(44.865389, -85.520597)
        marker.title = "Traverse City"
        marker.snippet = "Michigan"
        marker.map = mapView
    }
}




