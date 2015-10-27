//
//  Winery.swift
//  TCWineTour
//
//  Created by Donovan Cotter on 10/27/15.
//  Copyright © 2015 DonovanCotter. All rights reserved.
//

import Foundation
import GoogleMaps

//let chateauChantalmarker = GMSMarker()
//let twoLads = GMSMarker()
//let marker = GMSMarker()

class Winery {
    var position = CLLocationCoordinate2D()
    var title = String()
    var marker = GMSMarker()


    init(position: CLLocationCoordinate2D, title: String, marker: GMSMarker) {
        self.position = position
        self.title = title
        self.marker =
    }
    
    
}

//chateauChantalmarker.position = CLLocationCoordinate2DMake(44.865389, -85.520597)
//chateauChantalmarker.title = "Chateau Chantal"
//chateauChantalmarker.snippet = "Winery"
//
//twoLads.position = CLLocationCoordinate2DMake(44.933800, -85.493137)
//twoLads.title = "2 Lads"
//twoLads.snippet = "Winery"
//twoLads.map = mapView