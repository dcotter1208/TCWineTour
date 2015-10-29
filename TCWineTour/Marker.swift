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
    title = place.name
    icon = UIImage(named: "wineBottle")

    }

}

var chateauChantalMarker = Marker(place: chateauChantal)
//chateauChantalMarker.map = mapView

var twoLadsMarker = Marker(place: twoLads)
//twoLadsMarker.map = mapView

var brysEstateMarker = Marker(place: brysEstate)
//brysEstateMarker.map = mapView

var blackStarFarmsMarker = Marker(place: blackStarFarms)
//blackStarFarmsMarker.map = mapView

var chateauGrandTraverseMarker = Marker(place: chateauGrandTraverse)
//chateauGrandTraverseMarker.map = mapView

var hawthorneVineyardsMarker = Marker(place: hawthorneVineyards)
//hawthorneVineyardsMarker.map = mapView

var peninsulaCellarsMarker = Marker(place: peninsulaCellars)
//peninsulaCellarsMarker.map = mapView

var bowersHarborVineyardsMarker = Marker(place: bowersHarborVineyards)
//bowersHarborVineyardsMarker.map = mapView


var markers = [chateauChantalMarker, twoLadsMarker, brysEstateMarker, blackStarFarmsMarker, chateauGrandTraverseMarker, hawthorneVineyardsMarker, peninsulaCellarsMarker, bowersHarborVineyardsMarker]
