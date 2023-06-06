//
//  LocationsDataService.swift
//  MapTest
//
//  Created by Nick Sarno on 11/26/21.
//

import Foundation
import MapKit

class LocationsDataService {
    //  default Istanbul coordinate: 41.014217508317614, 28.97550922394332
    //  default Yenibosna coodinate: 40.99051790585374, 28.838160545475734
    
    static let locations: [Location] = [
        
        Location(title: "Yenibosna Aktarma",
                 name: "Aktarma Alanı",
                 cityName: "İstanbul",
                 coordinates: CLLocationCoordinate2D(latitude: 40.99051790585374, longitude: 28.838160545475734),
                 description: "Yenibosna metro durağı ve otobüs peronları arasında kalmaktadır. 7/24 açık.",
                 imageNames: ["yenibosna-1"],
                 link: "https://ibb.gov.tr"),

        Location(title: "Yenibosna Kuleli",
                 name: "Kuleli İETT Durak",
                 cityName: "İstanbul",
                 coordinates: CLLocationCoordinate2D(latitude: 40.9931043571932, longitude: 28.83524269339827),
                 description: "Yenibosna Kuleli İETT otobüs durakları arkasında yer almaktadır.",
                 imageNames: ["yenibosna-1"],
                 link: "https://ibb.gov.tr"),
        
        Location(title: "Bakırköy Sakızağacı",
                 name: "Sakızağacı Şehir Tuvaleti",
                 cityName: "İstanbul",
                 coordinates: CLLocationCoordinate2D(latitude:  40.97935392239168, longitude: 28.888140215271672),
                 description: "Sakızağacı, Kennedy Cad., 34142 Bakırköy/İstanbul",
                 imageNames: ["bakırköy"],
                 link: "https://ibb.gov.tr"),
      
    ]
    
    
               
}
