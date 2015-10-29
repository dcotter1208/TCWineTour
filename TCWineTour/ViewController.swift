//
//  ViewController.swift
//  TCWineTour
//
//  Created by Donovan Cotter on 10/26/15.
//  Copyright © 2015 DonovanCotter. All rights reserved.
//


import UIKit
import GoogleMaps

class ViewController: UIViewController, GMSMapViewDelegate {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //calling the getPlaceInfo function on each instance of the Winery class. The winery's placeID is passed into this function to get the Google Places API call.
        
        chateauChantal.getPlaceInfo(chateauChantal.placeID)
        twoLads.getPlaceInfo(twoLads.placeID)
        blackStarFarms.getPlaceInfo(blackStarFarms.placeID)
        brysEstate.getPlaceInfo(brysEstate.placeID)
        chateauGrandTraverse.getPlaceInfo(chateauGrandTraverse.placeID)
        hawthorneVineyards.getPlaceInfo(hawthorneVineyards.placeID)
        peninsulaCellars.getPlaceInfo(peninsulaCellars.placeID)
        bowersHarborVineyards.getPlaceInfo(bowersHarborVineyards.placeID)
        
        //This is the creation of the map.
        let camera = GMSCameraPosition.cameraWithLatitude(44.865389, longitude: -85.520597, zoom: 11)
        let mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        mapView.myLocationEnabled = true
        self.view = mapView
        
        
        //This is where the markers are created using the Marker class.
        let chateauChantalMarker = Marker(place: chateauChantal)
        chateauChantalMarker.map = mapView
        
        let twoLadsMarker = Marker(place: twoLads)
        twoLadsMarker.map = mapView
        
        let brysEstateMarker = Marker(place: brysEstate)
        brysEstateMarker.map = mapView
        
        let blackStarFarmsMarker = Marker(place: blackStarFarms)
        blackStarFarmsMarker.map = mapView
        
        let chateauGrandTraverseMarker = Marker(place: chateauGrandTraverse)
        chateauGrandTraverseMarker.map = mapView
        
        let hawthorneVineyardsMarker = Marker(place: hawthorneVineyards)
        hawthorneVineyardsMarker.map = mapView
        
        let peninsulaCellarsMarker = Marker(place: peninsulaCellars)
        peninsulaCellarsMarker.map = mapView
        
        let bowersHarborVineyardsMarker = Marker(place: bowersHarborVineyards)
        bowersHarborVineyardsMarker.map = mapView
        

        
        func map(mapView: GMSMapView!, didTapInfoWindowOfMarker marker: GMSMarker!) {
            
        print("THE WINDOW CAN BE TAPPED!!!!")
            
        func prepareForSegue(segue: UIStoryboardSegue, sender: Marker) {
            
            if segue.identifier == "showWineryDetail" {
                let wineryDetailVC = segue.destinationViewController as! WineryDetailVC
                print("THE WINDOW CAN BE TAPPED!!!!")
                
                }
            }
        
        }
    
    }
    
}
