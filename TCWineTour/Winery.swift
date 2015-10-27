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
    var placeID = String()
    var position = CLLocationCoordinate2D()

    init(placeID: String, position: CLLocationCoordinate2D) {
        self.placeID = placeID
        self.position = position
    }
    
    func getPalceInfo(placeID: String) {
        placesClient.lookUpPlaceID(placeID, callback: { (place: GMSPlace?, error: NSError?) -> Void in
            if let error = error {
                print("lookup place id query error: \(error.localizedDescription)")
                return
            }
            
            if let place = place {
                print("Place name \(place.name)")
                print("Place address \(place.formattedAddress)")
                print("Place placeID \(place.placeID)")
                print("Place attributions \(place.attributions)")
                print("test: \(place.website)")
            } else {
                print("No place details for......")
            }
        })
    
    }
        
}

    let chateauChantal = Winery(placeID: "ChIJY5Cc60vTSk0R2VMNMeozAC4", position: CLLocationCoordinate2DMake(44.865389, -85.520597))



    
