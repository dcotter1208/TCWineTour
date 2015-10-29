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
    var wineryName = String()
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
                
                self.wineryName = place.name
                print(self.wineryName)
//                print("name: \(place.name)")
//                print("address: \(place.formattedAddress)")
//                print("placeID: \(place.placeID)")
//                print("attributions: \(place.attributions)")
//                print("website: \(place.website)")
//                print("OpenNow: \(place.openNowStatus)")
//                print("Coordinates:\(place.coordinate)")
//                print("types: \(place.types)")
                
                print("*****************************")
            } else {
                print("No place details for this winery")
            }
        })
     
    }
        
}


let chateauChantal = Winery(mapTitle: "Chateau Chantal", placeID: "ChIJY5Cc60vTSk0R2VMNMeozAC4", position: CLLocationCoordinate2DMake(44.865389, -85.520597))

let twoLads = Winery(mapTitle: "2 Lads Winery", placeID: "ChIJ1WCqixPTSk0R32GumC6DelI", position: CLLocationCoordinate2DMake(44.933800, -85.493137))

let blackStarFarms = Winery(mapTitle: "Black Star Farms", placeID: "ChIJS_2fe-cqS00ReAbMJtxYYWc", position: CLLocationCoordinate2DMake(44.796237, -85.582338))

let brysEstate = Winery(mapTitle: "Brys Estate Vineyard & Winery", placeID: "ChIJ-8biVGXWH4gRFWNjXgkKD1A", position: CLLocationCoordinate2DMake(44.883793, -85.509605))

let chateauGrandTraverse = Winery(mapTitle: "Chateau Grand Traverse", placeID: "ChIJX1z3IZ3WH4gRFABKNQNThNI", position: CLLocationCoordinate2DMake(44.865389, -85.520597))

let hawthorneVineyards = Winery(mapTitle: "Hawthorne Vineyards", placeID: "ChIJ77wBC3PTH4gRnKhROe31Irc", position: CLLocationCoordinate2DMake(44.826234, -85.561048))

let peninsulaCellars = Winery(mapTitle: "Peninsula Cellars", placeID: "ChIJ1YJXVR_UH4gR0UiRffiIaMw", position: CLLocationCoordinate2DMake(44.856561, -85.525241))

let bowersHarborVineyards = Winery(mapTitle: "Bowers Harbor Vineyards", placeID: "ChIJt5j2onTWH4gRqppuFhhRRkQ", position: CLLocationCoordinate2DMake(44.892408, -85.515425))



var wineries = [chateauChantal, twoLads, blackStarFarms, brysEstate, chateauGrandTraverse, hawthorneVineyards, peninsulaCellars, bowersHarborVineyards]
