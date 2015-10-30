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

    var winery = Winery?()
    var website = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        used for loop to itterate over 
        
        for winery in wineries {
            winery.getPlaceInfo(winery.placeID)
        }
        
    
        //This is the creation of the map.
        let camera = GMSCameraPosition.cameraWithLatitude(44.865389, longitude: -85.520597, zoom: 11)
        let mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        mapView.myLocationEnabled = true
        self.view = mapView
        mapView.delegate = self
        
        
        for marker in markers {
            marker.map = mapView
        }
        
    
    }
    
}

// MARK: GMSMapViewDelegate
extension ViewController: GMSMapViewDelegate {
    func mapView(mapView: GMSMapView!, didTapInfoWindowOfMarker marker: GMSMarker!) {
        UIApplication.sharedApplication().openURL(NSURL(string: website)!)
        
    }
    
    func viewFromNibName(name: String) -> UIView? {
        let views = NSBundle.mainBundle().loadNibNamed(name, owner: nil, options: nil)
        return views.first as? UIView
    }
    
    func mapView(mapView: GMSMapView!, markerInfoContents marker: GMSMarker!) -> UIView! {
        let placeMarker = marker as! Marker
        let infoView = viewFromNibName("InfoWindowVC") as? InfoWindowVC
        infoView?.infoWindowLabel.text = placeMarker.place.name
        infoView?.infoWindowImage.image = placeMarker.place.image
        infoView?.infoWindowAddressLabel.text = placeMarker.place.address
        website = "\(placeMarker.place.website!)"
        infoView?.infoWindowWebsiteLabel.text = website
        infoView?.infoWindowPhoneLabel.text = placeMarker.place.phoneNumber
        return infoView
    }
    
    
}
