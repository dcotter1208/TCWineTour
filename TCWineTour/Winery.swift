//
//  Winery.swift
//  TCWineTour
//
//  Created by Donovan Cotter on 10/27/15.
//  Copyright © 2015 DonovanCotter. All rights reserved.
//

import Foundation
import GoogleMaps

let placesClient = GMSPlacesClient()

class Winery {
    var mapTitle = String()
    var placeID = String()
    var position = CLLocationCoordinate2D()

    init(mapTitle: String, placeID: String, position: CLLocationCoordinate2D) {
        self.mapTitle = mapTitle
        self.placeID = placeID
        self.position = position
    }
    
    func getPlaceInfo(placeID: String) {
        placesClient.lookUpPlaceID(placeID, callback: { (place: GMSPlace?, error: NSError?) -> Void in
            if let error = error {
                print("lookup place id query error: \(error.localizedDescription)")
                return
            }
            
            if let place = place {
                print("name: \(place.name)")
                print("address: \(place.formattedAddress)")
                print("placeID: \(place.placeID)")
                print("attributions: \(place.attributions)")
                print("website: \(place.website)")
            } else {
                print("No place details for this winery")
            }
        })
     
    }
        
}


let chateauChantal = Winery(mapTitle: "Chateau Chantal", placeID: "ChIJY5Cc60vTSk0R2VMNMeozAC4", position: CLLocationCoordinate2DMake(44.865389, -85.520597))

let twoLads = Winery(mapTitle: "2 Lads Winery", placeID: "ChIJ1WCqixPTSk0R32GumC6DelI", position: CLLocationCoordinate2DMake(44.933800, -85.493137))







    
