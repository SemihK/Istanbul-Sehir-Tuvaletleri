//
//  LocationsDataService.swift
//  MapTest
//
//  Created by Nick Sarno on 11/26/21.
//  Updated by Semih Kesgin on 9/06/23
//  Happy New Year 2024!

import Foundation
import MapKit

class LocationsDataService {
    
    static let locations: [Location] = [
        
            //  default Istanbul coordinate: 41.014217508317614, 28.97550922394332
            
        Location(
                         name: "Yenibosna Aktarma",
                         status: "08:00 - 20:00",
                         coordinates: CLLocationCoordinate2D(latitude: 40.99051790585374, longitude: 28.838160545475734),
                         description: "Yenibosna İETT aktarma peronları içerisinde yer almaktadır.",
                         imageNames: ["yenibosna-1"],
                         cost: "2₺.",
                         link: "https://ibb.gov.tr"),
        
            
                Location( 
                         name: "Yenibosna Kuleli İETT",
                         status: "08:00 - 20:00",
                         coordinates: CLLocationCoordinate2D(latitude: 40.9931043571932, longitude: 28.83524269339827),
                         description: "Yenibosna Kuleli İETT otobüs durakları arkasında yer almaktadır.",
                         imageNames: ["yenibosna-1"],
                         cost: "2₺",
                         link: "https://ibb.gov.tr"),
                
                Location(
                         name: "Bakırköy Sakızağacı",
                         status: "08:00 - 20:00",
                         coordinates: CLLocationCoordinate2D(latitude:  40.97935392239168, longitude: 28.888140215271672),
                         description: "Sakızağacı, Kennedy Cad., 34142 Bakırköy/İstanbul",
                         imageNames: ["bakırköy"],
                         cost: "2₺",
                         link: "https://ibb.gov.tr"),
        Location(
                 name: "Kadıköy Yoğurtçu Parkı",
                 status: "08:00 - 20:00",
                 coordinates: CLLocationCoordinate2D(latitude:  40.98818320352461, longitude: 29.03362714315379),
                 description: "Osmanağa, Yoğurtçu Parkı Cd, 34714 Kadıköy/İstanbul",
                 imageNames: ["kadıköy-yogurtcu"],
                 cost: "2₺",
                 link: "https://ibb.gov.tr"),
        
        Location(
                 name: "Göztepe Parkı",
                 status: "08:00 - 20:00",
                 coordinates: CLLocationCoordinate2D(latitude:  40.97435174801938,  longitude: 29.06030894148011),
                 description: "Caddebostan, Prof. Dr. Hulusi Behçet Cd., 34728 Kadıköy/İstanbul",
                 imageNames: ["göztepe-parkı"],
                 cost: "2₺",
                 link: "https://ibb.gov.tr"),
        
        Location(
                 name: "Emirgan Sarı Köşk",
                 status: "08:00 - 20:00",
                 coordinates: CLLocationCoordinate2D(latitude:  41.10767634087909,  longitude: 29.0537924175079),
                 description: "Emirgan, Emirgan Sk., 34467 Sarıyer/İstanbul",
                 imageNames: ["no-image"],
                 cost: "2₺",
                 link: "https://ibb.gov.tr"),
        
        Location(
                 name: "Belgrad Ormanı Bent",
                 status: "08:00 - 20:00",
                 coordinates: CLLocationCoordinate2D(latitude: 41.18820860188869,  longitude: 28.98792760316154),
                 description: "Bahçeköy Merkez, Bentler Tabiat Parkı, 34473 Sarıyer/İstanbul",
                 imageNames: ["belgrad-bent"],
                 cost: "2₺",
                 link: "https://ibb.gov.tr"),
        
        Location(
                 name: "Gümüşsuyu Beyoğlu",
                 status: "08:00 - 20:00",
                 coordinates: CLLocationCoordinate2D(latitude: 41.04194462463767,  longitude: 28.986370483960886),
                 description: "Gümüşsuyu, Cumhuriyet Cd. 26 H, 34437 Beyoğlu/İstanbul",
                 imageNames: ["gümüşsuyu"],
                 cost: "2₺",
                 link: "https://ibb.gov.tr"),
        
        Location(
                 name: "Sirkeci Marmaray",
                 status: "08:00 - 20:00",
                 coordinates: CLLocationCoordinate2D(latitude:41.01574616785,  longitude: 28.976587527300193),
                 description: "Hoca Paşa, Ankara Cd., 34110 Fatih/İstanbul",
                 imageNames: ["sirkeci"],
                 cost: "2₺",
                 link: "https://ibb.gov.tr"),
        
        Location(
                 name: "Metrokent Metro",
                 status: "08:00 - 00:00",
                 coordinates: CLLocationCoordinate2D(latitude:41.10777950616065,  longitude: 28.801243457210106),
                 description: "Metrokent Metro, 34480 Başakşehir/İstanbul",
                 imageNames: ["metrokent"],
                 cost: "2₺",
                 link: "https://ibb.gov.tr"),
        
        Location(
                 name: "Başak Konutları Metro",
                 status: "08:00 - 00:00",
                 coordinates: CLLocationCoordinate2D(latitude:41.097118069544884,  longitude: 28.790796387565226),
                 description: "Başak, Hürriyet Bulvari, 34480 Başakşehir/İstanbul",
                 imageNames: ["basak-konutları"],
                 cost: "2₺",
                 link: "https://ibb.gov.tr"),
    
        
        Location(
                 name: "Marmaray Yenikapı ",
                 status: "08:00 - 00:00",
                 coordinates: CLLocationCoordinate2D(latitude:41.00557755971019,  longitude: 28.951545251074144),
                 description: "Aksaray, Langa Bostanları Sk., 34096 Fatih/İstanbul",
                 imageNames: ["marmaray-yenikapı"],
                 cost: "2₺",
                 link: "https://ibb.gov.tr"),
        
        Location(
            name: "M2 4. Levent Şehir Tuvaleti",
            status: "08:00 - 00:00",
            coordinates: CLLocationCoordinate2D(latitude: 41.0868398, longitude: 29.0071827),
            description: "4.Levent metro durağı içerisinde yer almaktadır.",
            imageNames: ["no-image"],
            cost: "2₺",  // Ücret bilgisi eksik
            link: "https://www.google.com/maps/place/İBB+M2+4.+Levent+Şehir+Tuvaleti/@41.0868398,29.0071827,11z"
        ),
        
        Location(
            name: "Harbiye Şehir Tuvaleti",
            status: "",  // Durum bilgisi eksik
            coordinates: CLLocationCoordinate2D(latitude: 41.0868398, longitude: 28.9905094),
            description: "",  // Açıklama bilgisi eksik
            imageNames: ["no-image"],
            cost: "2₺",  // Ücret bilgisi eksik
            link: "https://maps.app.goo.gl/aXFMNZ6H5fPfDLd77"
        ),
        
        Location(
            name: "Fatih Hırka-ı Şerif Camii Şehir Tuvaleti",
            status: "",  // Durum bilgisi eksik
            coordinates: CLLocationCoordinate2D(latitude: 41.0219406, longitude: 28.9410993),
            description: "",  // Açıklama bilgisi eksik
            imageNames: ["no-image"],
            cost: "2₺",  // Ücret bilgisi eksik
            link: "https://www.google.com/maps/place/İBB+Fatih+Hırka-ı+Şerif+Camii+Şehir+Tuvaleti/@41.0219406,28.9410993,11z"
        ),
        
        Location(
            name: "M2 Levent Şehir Tuvaleti",
            status: "M2 Levent durağı içerisinde yer almaktadır.",  // Durum bilgisi eksik
            coordinates: CLLocationCoordinate2D(latitude: 41.0780469, longitude: 29.0129576),
            description: "",  // Açıklama bilgisi eksik
            imageNames: ["no-image"],
            cost: "2₺",  // Ücret bilgisi eksik
            link: "https://www.google.com/maps/place/İBB+M2+Levent+Şehir+Tuvaleti/@41.0780469,29.0129576,11z"
        ),
        
        Location(
            name: "Bebek Parkı Şehir Tuvaleti",
            status: "",  // Durum bilgisi eksik
            coordinates: CLLocationCoordinate2D(latitude: 41.0764893, longitude: 29.0436177),
            description: "",  // Açıklama bilgisi eksik
            imageNames: ["no-image"],
            cost: "2₺",  // Ücret bilgisi eksik
            link: "https://www.google.com/maps/place/İBB+Bebek+Parkı+Şehir+Tuvaleti/@41.0764893,29.0436177,11z"
        ),
        
        Location(
            name: "M2 Gayrettepe Şehir Tuvaleti",
            status: "08:00 - 00:00",
            coordinates: CLLocationCoordinate2D(latitude: 41.0690246, longitude: 29.0106562),
            description: "M2 Gayrettepe metro durağı içerisinde yer almaktadır.",  // Açıklama bilgisi eksik
            imageNames: ["no-image"],
            cost: "2₺",
            link: "https://www.google.com/maps/place/İBB+M2+Gayrettepe+Şehir+Tuvaleti/@41.0690246,29.0106562,11z"
        ),
        
        Location(
            name: "Eyüpsultan Kafe Şehir Tuvaleti",
            status: "",  // Durum bilgisi eksik
            coordinates: CLLocationCoordinate2D(latitude: 41.040918, longitude: 28.9420376),
            description: "",  // Açıklama bilgisi eksik
            imageNames: ["no-image"],
            cost: "2₺",  // Ücret bilgisi eksik
            link: "https://www.google.com/maps/place/İBB+Eyüpsultan+Kafe+Şehir+Tuvaleti/@41.040918,28.9420376,11z"
        ),
        
        Location(
            name: "Maltepe Şehir Tuvaleti",
            status: "08:00 - 22:00",
            coordinates: CLLocationCoordinate2D(latitude: 40.9331756, longitude: 29.115802),
            description: "Maltepe İBB Şehir Tuvaleti, Maltepe Sahil Yolu üzerinde yer almaktadır.",
            imageNames: ["no-image", "maltepe-tuvalet-2"],
            cost: "2₺",
            link: "https://www.google.com/maps/place/İBB+Şehir+Tuvaleti+Maltepe"
        ),

        Location(
            name: "İdealtepe Sahil Şehir Tuvaleti 1",
            status: "08:00 - 20:00",
            coordinates: CLLocationCoordinate2D(latitude: 40.9401788, longitude: 29.1097701),
            description: "İdealtepe Sahil Şehir Tuvaleti 1, sahil boyunca yer alan bir halk tuvaletidir.",
            imageNames: ["no-image", "idealtepe-tuvalet-2"],
            cost: "2₺",
            link: "https://www.google.com/maps/place/İBB+İdealtepe+Sahil+Şehir+Tuvaleti+1"
        ),

        Location(
            name: "Maltepe Sahil Şehir Tuvaleti 3",
            status: "08:00 - 22:00",
            coordinates: CLLocationCoordinate2D(latitude: 40.9222663, longitude: 29.1245992),
            description: "Maltepe Sahil Şehir Tuvaleti 3, sahil boyunca hizmet veren bir halk tuvaletidir.",
            imageNames: ["no-image", "maltepe-tuvalet-4"],
            cost: "2₺",
            link: "https://www.google.com/maps/place/İBB+Maltepe+Sahil+Şehir+Tuvaleti+3"
        ),
        
        Location(
            name: "50. Yıl Korusu Şehir Tuvaleti",
            status: "08:00 - 20:00",
            coordinates: CLLocationCoordinate2D(latitude: 40.9414, longitude: 29.1226),
            description: "50. Yıl Korusu Şehir Tuvaleti, yeşillikler içindeki 50. Yıl Korusu'nda yer alan halk tuvaletidir.",
            imageNames: ["no-image", "50-yil-korusu-tuvalet-2"],
            cost: "2₺",
            link: "https://www.google.com/maps/place/İBB+50.+Yıl+Korusu+Şehir+Tuvaleti"
        ),

        Location(
            name: "Galata Eminönü Şehir Tuvaleti",
            status: "08:00 - 22:00",
            coordinates: CLLocationCoordinate2D(latitude: 41.0180326, longitude: 28.9722879),
            description: "Galata Eminönü Şehir Tuvaleti, Galata Kulesi'nin yakınında, Eminönü'nde yer alan halk tuvaletidir.",
            imageNames: ["galata-eminonu-tuvalet-1", "galata-eminonu-tuvalet-2"],
            cost: "2₺",
            link: "https://www.google.com/maps/place/İBB+Galata+Eminönü+Şehir+Tuvaleti"
        ),

        Location(
            name: "Dedeoğlu Parkı Şehir Tuvaleti",
            status: "08:00 - 18:00",
            coordinates: CLLocationCoordinate2D(latitude: 41.1070358, longitude: 29.0875711),
            description: "Dedeoğlu Parkı Şehir Tuvaleti, yeşillikler içindeki Dedeoğlu Parkı'nda hizmet veren halk tuvaletidir.",
            imageNames: ["dedeoglu-parki-tuvalet-1", "dedeoglu-parki-tuvalet-2"],
            cost: "2₺",
            link: "https://www.google.com/maps/place/İBB+Dedeoğlu+Parkı+Şehir+Tuvaleti"
        ),

        Location(
            name: "Emirgan Havuz Altı Şehir Tuvaleti",
            status: "08:00 - 19:00",
            coordinates: CLLocationCoordinate2D(latitude: 41.108714, longitude: 29.0552605),
            description: "Emirgan Havuz Altı Şehir Tuvaleti, Emirgan Korusu'nda yer alan halk tuvaletidir.",
            imageNames: ["emirgan-tuvalet-1", "emirgan-tuvalet-2"],
            cost: "2₺",
            link: "https://www.google.com/maps/place/İBB+Emirgan+Havuz+Altı+Şehir+Tuvaleti"
        ),




        
         // Location format
        
       /*/ Location(name: <#T##String#>,
                 status: <#T##String#>,
                 coordinates: <#T##CLLocationCoordinate2D#>,
                 description: <#T##String#>,
                 imageNames: <#T##[String]#>,
                 cost: <#T##String#>,
                 link: <#T##String#>)
    /**/*/
    
    ]
}
