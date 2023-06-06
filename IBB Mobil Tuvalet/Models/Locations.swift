//
//  Locations.swift
//  IBB Mobil Tuvalet
//
//  Created by Semih Kesgin on 2.06.2023.
//

import Foundation
import MapKit


struct Location: Identifiable{
    let name : String
    let cityName : String
    let coordinates : CLLocationCoordinate2D
    let description : String
    let imageNames : [String]
    let link : String
    
    // Identifiable section
    var id: String{
        // name = "Yenibosna"
        // cityName = "Istanbul"
        // id = "YenibosnaIstanbul"
        name + cityName
        
    }
}
   
    

