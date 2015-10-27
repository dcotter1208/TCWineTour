//
//  Marker.swift
//  TCWineTour
//
//  Created by Donovan Cotter on 10/27/15.
//  Copyright © 2015 DonovanCotter. All rights reserved.
//

import Foundation
import GoogleMaps

class Marker: GMSMarker {
    let place: Winery
    
    init(place: Winery) {
    self.place = place
    super.init()
            
    position = place.position
    icon = UIImage(named: "wineBottle")

    }

}
//func setMarker(position: CLLocationCoordinate2D, title: String, map: GMSMapView) -> GMSMarker{
//    
//    return Winery.
//}