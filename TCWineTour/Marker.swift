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
    title = place.mapTitle
    icon = UIImage(named: "wineBottle")

    }

}
