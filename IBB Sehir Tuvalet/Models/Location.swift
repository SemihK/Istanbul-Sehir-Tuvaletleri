//
//  Locations.swift
//  IBB Mobil Tuvalet
//
//  Created by Semih Kesgin on 2.06.2023.
//
import Foundation
import MapKit

struct Location: Identifiable, Equatable {
    
    let name: String
    let status: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let cost: String
    let link: String
    
    
    
    // Identifiable section
    var id: String{
        // name = "Yenibosna"
        // cityName = "Istanbul"
        // id = "YenibosnaIstanbul"
        name + status
    }
    
    static func == (lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
    

}

struct Kartlar: Identifiable, Equatable {
    
    let link: String
    
    // Identifiable section
    var id: String{
        link
    }
}
