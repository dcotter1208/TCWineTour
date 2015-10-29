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
    var name = String?()
    var address = String?()
    var website = NSURL?()
    var phoneNumber = String?()
    var placeID = String()
    var position = CLLocationCoordinate2D()
    var image = UIImage()

    init(placeID: String, position: CLLocationCoordinate2D, image: UIImage) {
        self.placeID = placeID
        self.position = position
        self.image = image
    }
    
    func getPlaceInfo(placeID: String) {
        placesClient.lookUpPlaceID(placeID, callback: { (place: GMSPlace?, error: NSError?) -> Void in
            if let error = error {
                print("lookup place id query error: \(error.localizedDescription)")
                return
            }
            
            if let place = place {
                
                self.name = place.name
                self.address = place.formattedAddress
                self.website = place.website
                self.phoneNumber = place.phoneNumber

                
                print("*****************************")
            } else {
                print("No place details for this winery")
            }
        })
     
    }
        
}


let chateauChantal = Winery(placeID: "ChIJY5Cc60vTSk0R2VMNMeozAC4", position: CLLocationCoordinate2DMake(44.865389, -85.520597), image: UIImage(named: "chateauChantal")!)

let twoLads = Winery(placeID: "ChIJ1WCqixPTSk0R32GumC6DelI", position: CLLocationCoordinate2DMake(44.933800, -85.493137), image: UIImage(named: "2Lads")!)

let blackStarFarms = Winery(placeID: "ChIJS_2fe-cqS00ReAbMJtxYYWc", position: CLLocationCoordinate2DMake(44.796237, -85.582338), image: UIImage(named: "blackStarFarms")!)

let brysEstate = Winery(placeID: "ChIJ-8biVGXWH4gRFWNjXgkKD1A", position: CLLocationCoordinate2DMake(44.883793, -85.509605), image: UIImage(named: "brysEstate")!)

let chateauGrandTraverse = Winery(placeID: "ChIJX1z3IZ3WH4gRFABKNQNThNI", position: CLLocationCoordinate2DMake(44.865389, -85.520597), image: UIImage(named: "chateauGT")!)

let hawthorneVineyards = Winery(placeID: "ChIJ77wBC3PTH4gRnKhROe31Irc", position: CLLocationCoordinate2DMake(44.826234, -85.561048), image: UIImage(named: "hawthorne")!)

let peninsulaCellars = Winery(placeID: "ChIJ1YJXVR_UH4gR0UiRffiIaMw", position: CLLocationCoordinate2DMake(44.856561, -85.525241), image: UIImage(named: "peninsulaCellars")!)

let bowersHarborVineyards = Winery(placeID: "ChIJt5j2onTWH4gRqppuFhhRRkQ", position: CLLocationCoordinate2DMake(44.892408, -85.515425), image: UIImage(named: "bowersHarbor")!)



var wineries = [chateauChantal, twoLads, blackStarFarms, brysEstate, chateauGrandTraverse, hawthorneVineyards, peninsulaCellars, bowersHarborVineyards]
