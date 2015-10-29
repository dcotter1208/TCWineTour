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
    var description = String()

    init(placeID: String, position: CLLocationCoordinate2D, image: UIImage, description: String) {
        self.placeID = placeID
        self.position = position
        self.image = image
        self.description = description
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

            } else {
                print("No place details for this winery")
            }
        })
     
    }
        
}


let chateauChantal = Winery(placeID: "ChIJY5Cc60vTSk0R2VMNMeozAC4", position: CLLocationCoordinate2DMake(44.865389, -85.520597), image: UIImage(named: "chateauChantal")!, description: "Think of it as your very own perfectly charming winery and luxury inn, offering breathtaking views of both East and West Grand Traverse Bay. Open all year, our gracious staff will offer wine tasting and sales - from dry to sweet to sparkling. Immerse yourself in our year-round B&B; stay a night or come for a wine seminar, cooking class or plan a private event. Also featuring 'Jazz at Sunset', 'Tapas Tours' and 'Wine Dinners' in the summer months. Join us for a friendly experience at Chateau Chantal!")

let twoLads = Winery(placeID: "ChIJ1WCqixPTSk0R32GumC6DelI", position: CLLocationCoordinate2DMake(44.933800, -85.493137), image: UIImage(named: "2Lads")!, description: "Our winery's contemporary architecture is a bold statement capturing the fresh characteristics of our wines. Stepping into our tasting room, you're immediately drawn to a bar of concrete overlooking a sweeping vista of East Bay - a view beyond compare. We specialize in producing small lots of red, white and sparkling wine from the highest quality grapes: Pinot Noir, Merlot, Cabernet Franc, Pinot Grigio, Chardonnay and Riesling. We invite you to sample, try a wine and food pairing flight or just sit and enjoy a glass in our modern space. Producing extraordinary wines is our passion; offering them to you is our pleasure.")

let blackStarFarms = Winery(placeID: "ChIJS_2fe-cqS00ReAbMJtxYYWc", position: CLLocationCoordinate2DMake(44.796237, -85.582338), image: UIImage(named: "blackStarFarms")!, description: "Black Star Farms Old Mission sits just off scenic M-37 amongst the rolling hills and gorgeous views of East Grand Traverse Bay. The former home of locally renowned Underwood Farm Market now houses a beautiful tasting room and state-of-the-art wine making and distillation facility. The tasting room boasts a round bar constructed from wine barrels, a cozy fireplace, and a knowledgeable and friendly staff. Taste many of our award-winning wines and brandies, all of which express the regional nature of Northwest Michigan.")

let brysEstate = Winery(placeID: "ChIJ-8biVGXWH4gRFWNjXgkKD1A", position: CLLocationCoordinate2DMake(44.883793, -85.509605), image: UIImage(named: "brysEstate")!, description: "Brys Estate Vineyard & Winery is a family owned boutique winery situated on 80 acres with breathtaking views of East Grand Traverse Bay. We produce 5,000 cases per year of small batch, single vineyard estate grown and bottled Pinot Blanc, Pinot Grigio, Chardonnay, Riesling, Gewurztraminer, Pinot Noir, Merlot Cabernet Franc and ice wine. Visitors will delight in winding past the 1890s-renovated farmhouse and barn turned guest cottage, gardens and vineyards as they make their way to the state-of-the-art winery. Sample our international award-winning wines in our unique old world brick and mahogany tasting room with views into our vaulted French oak barrel room.")

let chateauGrandTraverse = Winery(placeID: "ChIJX1z3IZ3WH4gRFABKNQNThNI", position: CLLocationCoordinate2DMake(44.865389, -85.520597), image: UIImage(named: "chateauGT")!, description: "With stunning views, a modern wine-making facility, and more than 120 acres of estate vineyards, this is the oldest and largest winery on Old Mission Peninsula. Owned andoperated by the O'Keefe family, this pioneering winery is internationally known for producing outstanding Rieslings of consistent high quality and value. Offering guided winery tours, a well-appointed tasting room, and a friendly and knowledgeable staff, visitors will enjoy a complete winery experience. The Winery Inn offers six guest rooms overlooking the vineyards and Grand Traverse Bay.")

let hawthorneVineyards = Winery(placeID: "ChIJ77wBC3PTH4gRnKhROe31Irc", position: CLLocationCoordinate2DMake(44.826234, -85.561048), image: UIImage(named: "hawthorne")!, description: "Hawthorne Vineyards is a pristine vineyard and tasting room destination just four miles from Traverse City on Old Mission Peninsula. The 80 acre site is nestled into a ridge above Peninsula Drive with postcard views of East and West Grand Traverse Bays. Handcrafted wines are created from the vineyard’s acreage of Pinot Noir, Pinot Grigio, Merlot, Lemberger, Gamay, Chardonnay, Pinot Blanc, Gewurztraminer and Riesling. Surrounding traffic and disruptions vanish as guests make their way up the winding private drive to the most peaceful and serene vineyard destination on Old Mission.")

let peninsulaCellars = Winery(placeID: "ChIJ1YJXVR_UH4gR0UiRffiIaMw", position: CLLocationCoordinate2DMake(44.856561, -85.525241), image: UIImage(named: "peninsulaCellars")!, description: "Peninsula Cellars is a family owned and operated winery located on the 150-year-old Kroupa farm. Specializing in Gewürztraminer and Riesling, Peninsula Cellars also offers a number of red, white, and fruit wines, including a white cherry wine and a black sweet cherry dessert wine. Located six miles north of Traverse City, visitors will delight in our wonderfully renovated 19th century schoolhouse turned tasting room. Come try our award-winning wines and taste what Old Mission Peninsula has to offer.")

let bowersHarborVineyards = Winery(placeID: "ChIJt5j2onTWH4gRqppuFhhRRkQ", position: CLLocationCoordinate2DMake(44.892408, -85.515425), image: UIImage(named: "bowersHarbor")!, description: "We invite you to visit our family-run boutique winery, featuring panoramic views of Lake Michigan's historic Bowers Harbor. Our 43-acre estate's close proximity to the water creates ideal conditions for growing Vinifera grapes. Enjoy the epic views, award-winning and estate grown Pinot Grigio, Riesling, Chardonnay, Cabernet Franc, Gewürztraminer, Pinot Noir and meritage blends. Our informal tasting room provides a friendly, relaxed atmosphere for sampling and conversation. Come taste, learn and enjoy.")



var wineries = [chateauChantal, twoLads, blackStarFarms, brysEstate, chateauGrandTraverse, hawthorneVineyards, peninsulaCellars, bowersHarborVineyards]
