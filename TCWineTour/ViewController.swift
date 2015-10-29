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
        mapView.delegate = self
    
        self.view = mapView
        
        let chateauChantalMarker = Marker(place: chateauChantal)
        chateauChantalMarker.map = mapView
        
        
        let twoLadsMarker = Marker(place: twoLads)
        twoLadsMarker.map = mapView
        
//        func prepareForSegue(segue: UIStoryboardSegue, sender: Marker) {
//            if segue.identifier == "showWineryDetail" {
//            let wineryDetailVC = segue.destinationViewController as! WineryDetailVC
//            print("THE WINDOW CAN BE TAPPED!!!!")
//            }
        
        
        
//        }
    
    }
    
}

// MARK: GMSMapViewDelegate
extension ViewController: GMSMapViewDelegate {
    func mapView(mapView: GMSMapView!, didTapInfoWindowOfMarker marker: GMSMarker!) {
        let newView = self.storyboard?.instantiateViewControllerWithIdentifier("wineryDetailVC")
        
        self.showViewController(newView!, sender: self)
    }
    
    func mapView(mapView: GMSMapView!, markerInfoContents marker: GMSMarker!) -> UIView! {
        let placeMarker = marker as! Marker
        let infoView = UIView.viewFromNibName("InfoWindowVC") as? InfoWindowVC
        infoView?.markerInfoView.text = placeMarker.place.mapTitle
        
        return infoView
    }
    
}

