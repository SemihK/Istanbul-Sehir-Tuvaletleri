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
    
    static let istanbulkart: [Kartlar] = [
        Kartlar(
        link: "https://www.istanbulkart.istanbul"),
    ]
    static let locations: [Location] = [
        
            //  default Istanbul coordinate: 41.014217508317614, 28.97550922394332
        Location(
            name: "İBB Kısırkaya Plajı Şehir Tuvaleti",
            status: "08:00-23:00",
            coordinates: CLLocationCoordinate2D(latitude:41.25318096132824, longitude:  28.969878344510526),
            description: "İBB Kısırkaya Plajı Şehir Tuvaleti",
            imageNames: ["no-image"],
            cost: "3₺",
            link: "https://www.google.com/maps/place/İBB+Kısırkaya+Plajı+Şehir+Tuvaleti/@41.2395535,28.6545522,44898m/data=!3m1!1e3!4m10!1m2!2m1!1sşehir+tuvaleti!3m6!1s0x409fe3e2400d38d1:0x6791d46706eb8ca!8m2!3d41.2532194!4d28.9698518!15sCg_Fn2VoaXIgdHV2YWxldGmSARRwdWJsaWNfbWFsZV9iYXRocm9vbeABAA!16s%2Fg%2F11k50k2pp7?entry=ttu"
        ),
        
        Location(
            name: "Florya Atatürk Ormanı Şehir Tuvaleti 3",
            status: "08:00 - 20:00",
            coordinates: CLLocationCoordinate2D(latitude: 40.9799479, longitude: 28.7849802),
            description: "Florya Atatürk Ormanı Şehir Tuvaleti 3, yeşillikler içindeki ormanlık alanda hizmet veren halk tuvaletidir.",
            imageNames: ["florya-orman-tuvalet-1", "florya-orman-tuvalet-2"],
            cost: "2₺",
            link: "https://www.google.com/maps/place/İBB+Florya+Atatürk+Ormanı+Şehir+Tuvaleti+3"
        ),
        
        Location(
                         name: "Yenibosna Aktarma",
                         status: "08:00 - 20:00",
                         coordinates: CLLocationCoordinate2D(latitude: 40.99051790585374, longitude: 28.838160545475734),
                         description: "Yenibosna İETT aktarma peronları içerisinde yer almaktadır.",
                         imageNames: ["yenibosna-1"],
                         cost: "2₺.",
                         link: "https://ibb.gov.tr"),
        
            
                Location(
                         name: "Kuleli İETT Durağı",
                         status: "08:00 - 20:00",
                         coordinates: CLLocationCoordinate2D(latitude: 40.9931043571932, longitude: 28.83524269339827),
                         description: "Yenibosna Kuleli İETT otobüs durakları arkasında yer almaktadır.",
                         imageNames: ["yenibosna-2"],
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
            status: "08:00 - 20:00",  // Durum bilgisi eksik
            coordinates: CLLocationCoordinate2D(latitude: 41.0868398, longitude: 28.9905094),
            description: "veri bulunamadı",  // Açıklama bilgisi eksik
            imageNames: ["no-image"],
            cost: "2₺",  // Ücret bilgisi eksik
            link: "https://maps.app.goo.gl/aXFMNZ6H5fPfDLd77"
        ),
        
        Location(
            name: "Fatih Hırka-ı Şerif Camii Şehir Tuvaleti",
            status: "08:00 - 20:00",  // Durum bilgisi eksik
            coordinates: CLLocationCoordinate2D(latitude: 41.0219406, longitude: 28.9410993),
            description: "veri bulunamadı",  // Açıklama bilgisi eksik
            imageNames: ["no-image"],
            cost: "2₺",  // Ücret bilgisi eksik
            link: "https://www.google.com/maps/place/İBB+Fatih+Hırka-ı+Şerif+Camii+Şehir+Tuvaleti/@41.0219406,28.9410993,11z"
        ),
        
        Location(
            name: "M2 Levent Şehir Tuvaleti",
            status: "08:00 - 00:00",  // Durum bilgisi eksik
            coordinates: CLLocationCoordinate2D(latitude: 41.07580166878309, longitude: 29.014189423811903),
            description: "M2 Metrosu Levent durağı içerisinde yer almaktadır. ",  // Açıklama bilgisi eksik
            imageNames: ["no-image"],
            cost: "2₺",  // Ücret bilgisi eksik
            link: "https://www.google.com/maps/place/İBB+M2+Levent+Şehir+Tuvaleti/@41.0780469,29.0129576,11z"
        ),
        
        Location(
            name: "Bebek Parkı Şehir Tuvaleti",
            status: "08:00 - 20:00",  // Durum bilgisi eksik
            coordinates: CLLocationCoordinate2D(latitude: 41.0764893, longitude: 29.0436177),
            description: "Bebek Parkı Şehir Tuvaleti, İstanbul Büyükşehir Belediyesi tarafından işletilmektedir. Bebek Parkı bölgesinde bulunmaktadır.",  // Açıklama bilgisi eksik
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
            status: "08:00 - 20:00",  // Durum bilgisi eksik
            coordinates: CLLocationCoordinate2D(latitude: 41.040918, longitude: 28.9420376),
            description: "Eyüpsultan Kafe Şehir Tuvaleti, İstanbul Büyükşehir Belediyesi tarafından işletilmektedir. Eyüpsultan bölgesinde bulunmaktadır.",
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
            imageNames: ["no-image", "galata-eminonu-tuvalet-2"],
            cost: "2₺",
            link: "https://www.google.com/maps/place/İBB+Galata+Eminönü+Şehir+Tuvaleti"
        ),

        Location(
            name: "Dedeoğlu Parkı Şehir Tuvaleti",
            status: "08:00 - 18:00",
            coordinates: CLLocationCoordinate2D(latitude: 41.1070358, longitude: 29.0875711),
            description: "Dedeoğlu Parkı Şehir Tuvaleti, yeşillikler içindeki Dedeoğlu Parkı'nda hizmet veren halk tuvaletidir.",
            imageNames: ["dedeoglu-parki-tuvalet-1"],
            cost: "2₺",
            link: "https://www.google.com/maps/place/İBB+Dedeoğlu+Parkı+Şehir+Tuvaleti"
        ),

        Location(
            name: "Emirgan Havuz Altı Şehir Tuvaleti",
            status: "08:00 - 19:00",
            coordinates: CLLocationCoordinate2D(latitude: 41.108714, longitude: 29.0552605),
            description: "Emirgan Havuz Altı Şehir Tuvaleti, Emirgan Korusu'nda yer alan halk tuvaletidir.",
            imageNames: ["no-image", "emirgan-tuvalet-2"],
            cost: "2₺",
            link: "https://www.google.com/maps/place/İBB+Emirgan+Havuz+Altı+Şehir+Tuvaleti"
        ),
        
        Location(
          name: "İBB Yeşilköy Çiroz Sahil Şehir Tuvaleti",
          status: "08:00 - 20:00",
          coordinates: CLLocationCoordinate2D(latitude: 40.956660646838685, longitude: 28.813985401736673),
          description: "İBB Yeşilköy Çiroz Sahil Şehir Tuvaleti, Yeşilköy sahilinde bulunan halk tuvaletidir.",
          imageNames: ["çiroz"],
          cost: "2₺",
          link: "https://www.google.com/maps/place/İBB+Yeşilköy+Çiroz+Sahil+Şehir+Tuvaleti/@40.9566769,28.6088731,11z/data=!4m10!1m2!2m1!1zxLBCQiDFnmVoaXIgVHV2YWxldGk!3m6!1s0x14caa389659313e1:0xaa00ec1b858949b5!8m2!3d40.9566769!4d28.8139559!15sChTEsEJCIMWeZWhpciBUdXZhbGV0aZIBFHB1YmxpY19tYWxlX2JhdGhyb29t4AEA!16s"
        ),
        
        Location(
          name: "İBB Harbiye Şehir Tuvaleti 1",
          status: "08:00 - 20:00",
          coordinates: CLLocationCoordinate2D(latitude: 41.0462932, longitude: 28.9907559),
          description: "İBB Harbiye Şehir Tuvaleti 1, Harbiye Meydanı civarında bulunan halk tuvaletidir.",
          imageNames: ["no-image"],
          cost: "2₺",
          link: "https://www.google.com/maps/place/İBB+Harbiye+Şehir+Tuvaleti+1/@40.9566769,28.6088731,11z/data=!4m10!1m2!2m1!1zxLBCQiDFnmVoaXIgVHV2YWxldGk!3m6!1s0x14cab7e83673bbfb:0x960180cc8d5af779!8m2!3d41.0462932!4d28.9907559!15sChTEsEJCIMWeZWhpciBUdXZhbGV0aZIBFHB1YmxpY19tYWxlX2JhdGhyb29t4AEA!16s%2Fg%2F11sf2cfv4v?entry=ttu"
        ),
        
        Location(
          name: "İBB Moda Park Şehir Tuvaleti",
          status: "08:00 - 20:00",
          coordinates: CLLocationCoordinate2D(latitude: 40.9862787, longitude: 29.0206709),
          description: "İBB Moda Park Şehir Tuvaleti, Moda Parkı içerisinde bulunan halk tuvaletidir.",
          imageNames: ["no-image"],
          cost: "2₺",
          link: "https://www.google.com/maps/place/İBB+Moda+Park+Şehir+Tuvaleti/@40.9566769,28.6088731,11z/data=!4m10!1m2!2m1!1zxLBCQiDFnmVoaXIgVHV2YWxldGk!3m6!1s0x14cab93f07a46c37:0x67c15ee644f8508a!8m2!3d40.9862787!4d29.0206709!15sChTEsEJCIMWeZWhpciBUdXZhbGV0aZIBFHB1YmxpY19tYWxlX2JhdGhyb29t4AEA!16s%2Fg%2F11k4_pbvvp?entry=ttu"
        ),
        
        Location(
          name: "İBB Üsküdar Meydan Şehir Tuvaleti",
          status: "08:00 - 20:00",
          coordinates: CLLocationCoordinate2D(latitude: 41.0277926, longitude: 29.0165922),
          description: "İBB Üsküdar Meydan Şehir Tuvaleti, Üsküdar Meydanı'nda bulunan halk tuvaletidir.",
          imageNames: ["no-image"],
          cost: "2₺",
          link: "https://www.google.com/maps/place/İBB+Üsküdar+Meydan+Şehir+Tuvaleti/@40.9566769,28.6088731,11z/data=!4m10!1m2!2m1!1zxLBCQiDFnmVoaXIgVHV2YWxldGk!3m6!1s0x14cab79df0d4021f:0x400db9a71c8929fd!8m2!3d41.0277926!4d29.0165922!15sChTEsEJCIMWeZWhpciBUdXZhbGV0aZIBFHB1YmxpY19tYWxlX2JhdGhyb29t4AEA!16s%2Fg%2F11tp5twk7t?entry=ttu"
        ),
        
        Location(
          name: "İBB Şehzadebaşı Camii Şehir Tuvaleti",
          status: "08:00 - 20:00",
          coordinates: CLLocationCoordinate2D(latitude: 41.0140105, longitude: 28.9566158),
          description: "İBB Şehzadebaşı Camii Şehir Tuvaleti, Şehzadebaşı Camii'nin yanında bulunan halk tuvaletidir.",
          imageNames: ["no-image"],
          cost: "2₺",
          link: "https://www.google.com/maps/place/İBB+Şehzadebaşı+Camii+Şehir+Tuvaleti/@40.9566769,28.6088731,11z/data=!4m10!1m2!2m1!1zxLBCQiDFnmVoaXIgVHV2YWxldGk!3m6!1s0x14cab977784fc1a3:0x34b5bb41fef1c79d!8m2!3d41.0140105!4d28.9566158!15sChTEsEJCIMWeZWhpciBUdXZhbGV0aZIBFHB1YmxpY19tYWxlX2JhdGhyb29t4AEA!16s%2Fg%2F11k4wbwzrr?entry=ttu"
        ),
        
        Location(
          name: "İBB Cebeci Parkı Şehir Tuvaleti",
          status: "08:00 - 20:00",
          coordinates: CLLocationCoordinate2D(latitude: 41.1029463, longitude: 28.8762983),
          description: "İBB Cebeci Parkı Şehir Tuvaleti, Cebeci Parkı içerisinde bulunan halk tuvaletidir.",
          imageNames: ["no-image"],
          cost: "2₺",
          link: "https://www.google.com/maps/place/İBB+Cebeci+Parkı+Şehir+Tuvaleti/@40.9566769,28.6088731,11z/data=!4m10!1m2!2m1!1zxLBCQiDFnmVoaXIgVHV2YWxldGk!3m6!1s0x14cab103070eb235:0xca4559ad95d1ed15!8m2!3d41.1029463!4d28.8762983!15sChTEsEJCIMWeZWhpciBUdXZhbGV0aZIBFHB1YmxpY19tYWxlX2JhdGhyb29t4AEA!16s%2Fg%2F11trc2g28y?entry=ttu"
        ),
        
        Location(
            name: "İBB M3 Siteler Şehir Tuvaleti",
            status: "08:00-23:00",
            coordinates: CLLocationCoordinate2D(latitude: 41.0871925, longitude: 28.7964831),
            description: "M3 Siteler Şehir Tuvaleti, İstanbul Büyükşehir Belediyesi tarafından işletilen modern ve temiz bir tuvalettir. Kullanıcıların konforu için özenle tasarlanmıştır. Detaylı bilgi ve yol tarifi için ",
            imageNames: ["no-image"],
            cost: "3₺",  // Ücret bilgisi eksik
            link: "https://www.google.com/maps/place/İBB+M3+Siteler+Şehir+Tuvaleti/@41.1261244,28.7705118,13z/data=!4m10!1m2!2m1!1sibb+şehir+tuvaletleri!3m6!1s0x14caaf6fba6c4077:0x79b7d0e479b8ecdf!8m2!3d41.0871925!4d28.7964831!15sChZpYmIgxZ9laGlyIHR1dmFsZXRsZXJpkgEUcHVibGljX21hbGVfYmF0aHJvb23gAQA!16s%2Fg%2F11tp9wz5dc?entry=ttu"
        ),
        Location(
            name: "İBB Şehzadebaşı Camii Şehir Tuvaleti",
            status: "08:00-23:00",
            coordinates: CLLocationCoordinate2D(latitude: 41.0140105, longitude: 28.9566158),
            description: "İBB Şehzadebaşı Camii Şehir Tuvaleti",
            imageNames: ["no-image"],
            cost: "Ücretsiz",
            link: "https://www.google.com/maps/place/İBB+Şehzadebaşı+Camii+Şehir+Tuvaleti/@41.0462932,28.9248379,13z/data=!4m10!1m2!2m1!1sibb+şehir+tuvaletleri!3m6!1s0x14cab977784fc1a3:0x34b5bb41fef1c79d!8m2!3d41.0140105!4d28.9566158!15sChZpYmIgxZ9laGlyIHR1dmFsZXRsZXJpkgEUcHVibGljX21hbGVfYmF0aHJvb23gAQA!16s%2Fg%2F11k4wbwzrr?entry=ttu"
        ),
        Location(
            name: "İBB Kemerburgaz Kent Ormanı 1. Kapı Şehir Tuvaleti",
            status: "08:00-20:00",
            coordinates: CLLocationCoordinate2D(latitude: 41.1601667, longitude: 28.8915879),
            description: "İBB Kemerburgaz Kent Ormanı 1. Kapı Şehir Tuvaleti",
            imageNames: ["no-image"],
            cost: "Ücretsiz",
            link: "https://www.google.com/maps/place/İBB+Kemerburgaz+Kent+Ormanı+1.+Kapı+Şehir+Tuvaleti+2/@41.1601667,28.8256699,13z/data=!4m10!1m2!2m1!1sibb+şehir+tuvaletleri!3m6!1s0x14cab3099510e53f:0xdbf02a3342e896d0!8m2!3d41.1601667!4d28.8915879!15sChZpYmIgxZ9laGlyIHR1dmFsZXRsZXJpkgEUcHVibGljX21hbGVfYmF0aHJvb23gAQA!16s%2Fg%2F11tp95fvyw?entry=ttu"
        ),
        Location(
            name: "İBB Alibeyköy Cep Otogarı Şehir Tuvaleti",
            status: "08:00-23:00",
            coordinates: CLLocationCoordinate2D(latitude: 41.0879385, longitude: 28.9441094),
            description: "İBB Alibeyköy Cep Otogarı Şehir Tuvaleti",
            imageNames: ["no-image"],
            cost: "Ücretsiz",
            link: "https://www.google.com/maps/place/İBB+Alibeyköy+Cep+Otogarı+Şehir+Tuvaleti+2/@41.0879385,28.8781914,13z/data=!4m10!1m2!2m1!1sibb+şehir+tuvaletleri!3m6!1s0x14cab1cba38fd131:0xc849274b80ba789f!8m2!3d41.0879385!4d28.9441094!15sChZpYmIgxZ9laGlyIHR1dmFsZXRsZXJpkgEUcHVibGljX21hbGVfYmF0aHJvb23gAQA!16s%2Fg%2F11sf48dfqn?entry=ttu"
        ),
        Location(
            name: "İBB Sefaköy Şehir Tuvaleti",
            status: "08:00-23:00",
            coordinates: CLLocationCoordinate2D(latitude: 40.9990736, longitude: 28.7983843),
            description: "Sefaköy",
            imageNames: ["no-image"],
            cost: "Ücretsiz",
            link: "https://www.google.com/maps/place/İstanbul+Büyükşehir+Belediyesi+Umumi+Tuvaleti/@40.9990735,28.7937709,17z/data=!3m1!4b1!4m9!1m2!2m1!1sibb+şehir+tuvaletleri!3m5!1s0x14caa38e53198a77:0x382785c6c732396f!8m2!3d40.9990736!4d28.7983843!16s%2Fg%2F11dxdp33pt?entry=ttu"
        ),

        Location(
            name: "İBB Baraj Üstü Parkı Şehir Tuvaleti",
            status: "08:00-23:00",
            coordinates: CLLocationCoordinate2D(latitude: 41.1014448, longitude: 28.915876),
            description: "İBB Baraj Üstü Parkı Şehir Tuvaleti",
            imageNames: ["no-image"],
            cost: "Ücretsiz",
            link: "https://www.google.com/maps/place/İBB+Baraj+Üstü+Parkı+Şehir+Tuvaleti/@41.1014448,28.9117561,17z/data=!4m10!1m2!2m1!1sibb+şehir+tuvaletleri!3m6!1s0x14cab1e94eda1bc3:0xfaf1bc9ad5ff6766!8m2!3d41.1014448!4d28.915876!15sChZpYmIgxZ9laGlyIHR1dmFsZXRsZXJpkgEUcHVibGljX21hbGVfYmF0aHJvb23gAQA!16s%2Fg%2F11sf489x91?entry=ttu"
        ),
        Location(
            name: "İBB Büyük İstanbul Otogarı A3 Kule Şehir Tuvaleti (Kadın)",
            status: "08:00-23:00",
            coordinates: CLLocationCoordinate2D(latitude: 41.0415168, longitude: 28.8940643),
            description: "İBB Büyük İstanbul Otogarı A3 Kule Şehir Tuvaleti (Kadın)",
            imageNames: ["no-image"],
            cost: "2₺",
            link: "https://www.google.com/maps/place/İBB+Büyük+İstanbul+Otogarı+A3+Kule+Şehir+Tuvaleti(Kadın)/@41.0415168,28.8899444,17z/data=!4m10!1m2!2m1!1sibb+şehir+tuvaletleri!3m6!1s0x14cabbd500a93a3f:0xfcd7495cba2f05f7!8m2!3d41.0415168!4d28.8940643!15sChZpYmIgxZ9laGlyIHR1dmFsZXRsZXJpkgEWcHVibGljX2ZlbWFsZV9iYXRocm9vbeABAA!16s%2Fg%2F11trc1z1pz?entry=ttu"
        ),
        Location(
            name: "İBB M7 Göztepe Şehir Tuvaleti",
            status: "08:00-23:00",
            coordinates: CLLocationCoordinate2D(latitude: 41.0571846, longitude: 28.8461846),
            description: "İBB M7 Göztepe Şehir Tuvaleti",
            imageNames: ["no-image"],
            cost: "2₺",
            link: "https://www.google.com/maps/place/İBB+M7+Göztepe+Şehir+Tuvaleti/@41.0571846,28.8420647,17z/data=!4m10!1m2!2m1!1sibb+şehir+tuvaletleri!3m6!1s0x14caa5f9a531a319:0xef23872bcc9cf0da!8m2!3d41.0571846!4d28.8461846!15sChZpYmIgxZ9laGlyIHR1dmFsZXRsZXJpkgEUcHVibGljX21hbGVfYmF0aHJvb23gAQA!16s%2Fg%2F11tp9xcz5w?entry=ttu"
        ),
        Location(
            name: "İBB Maçka Demokrasi Parkı Girişi Şehir Tuvaleti",
            status: "08:00-23:00",
            coordinates: CLLocationCoordinate2D(latitude: 41.0438998, longitude: 28.9922683),
            description: "İBB Maçka Demokrasi Parkı Girişi Şehir Tuvaleti",
            imageNames: ["no-image"],
            cost: "2₺",
            link: "https://www.google.com/maps/place/İBB+Maçka+Demokrasi+Parkı+Girişi+Şehir+Tuvaleti/@41.0438998,28.9881484,17z/data=!4m10!1m2!2m1!1sibb+şehir+tuvaletleri!3m6!1s0x14cab711b76609f3:0x6db5aeb2d98d7d91!8m2!3d41.0438998!4d28.9922683!15sChZpYmIgxZ9laGlyIHR1dmFsZXRsZXJpkgEUcHVibGljX21hbGVfYmF0aHJvb23gAQA!16s%2Fg%2F11tp9ypwdq?entry=ttu"
        ),
        Location(
            name: "İBB Kadıköy İETT Şehir Tuvaleti 1",
            status: "08:00-23:00",
            coordinates: CLLocationCoordinate2D(latitude: 40.9950559, longitude: 29.0235557),
            description: "İBB Kadıköy İETT Şehir Tuvaleti",
            imageNames: ["no-image"],
            cost: "2₺",
            link: "https://www.google.com/maps/place/İBB+Kadıköy+İETT+Şehir+Tuvaleti+1/@40.9950559,29.0194358,17z/data=!4m10!1m2!2m1!1sibb+şehir+tuvaletleri!3m6!1s0x14cab9ea01a148f9:0x9a05d9c380b70926!8m2!3d40.9950559!4d29.0235557!15sChZpYmIgxZ9laGlyIHR1dmFsZXRsZXJpkgEUcHVibGljX21hbGVfYmF0aHJvb23gAQA!16s%2Fg%2F11tpb5ts38?entry=ttu"
        ),
        Location(
            name: "İBB Esenyurt Gaziler Parkı Şehir Tuvaleti",
            status: "08:00-18:00",
            coordinates: CLLocationCoordinate2D(latitude: 41.0236398, longitude: 28.6673632),
            description: "İBB Esenyurt Gaziler Parkı Şehir Tuvaleti",
            imageNames: ["no-image"],
            cost: "2₺",
            link: "https://www.google.com/maps/place/İBB+Esenyurt+Gaziler+Parkı+Şehir+Tuvaleti/@41.0236398,28.6671634,21z/data=!4m10!1m2!2m1!1sibb+şehir+tuvaletleri!3m6!1s0x14b55f8b1874df15:0xcb3c50cba20f6cd8!8m2!3d41.0237162!4d28.6673632!15sChZpYmIgxZ9laGlyIHR1dmFsZXRsZXJpkgEUcHVibGljX21hbGVfYmF0aHJvb23gAQA!16s%2Fg%2F11sf348gpf?entry=ttu"
        ),
        Location(
            name: "İBB Büyük İstanbul Otogarı Hamidiye Şehir Tuvaleti",
            status: "08:00-23:00",
            coordinates: CLLocationCoordinate2D(latitude: 41.0406772, longitude: 28.8954134),
            description: "İBB Büyük İstanbul Otogarı Hamidiye Şehir Tuvaleti",
            imageNames: ["no-image"],
            cost: "2₺",
            link: "https://www.google.com/maps/place/İBB+Büyük+İstanbul+Otogarı+Hamidiye+Şehir+Tuvaleti+2/@41.0406772,28.8951559,21z/data=!4m10!1m2!2m1!1sibb+şehir+tuvaletleri!3m6!1s0x14cabb09aa663a03:0xd18b9e2ceb34a81d!8m2!3d41.0406772!4d28.8954134!15sChZpYmIgxZ9laGlyIHR1dmFsZXRsZXJpkgEUcHVibGljX21hbGVfYmF0aHJvb23gAQA!16s%2Fg%2F11k54680vz?entry=ttu"
        ),
        Location(
            name: "İBB Yıldız Korusu Şehir Tuvaleti",
            status: "08:00-23:00",
            coordinates: CLLocationCoordinate2D(latitude: 41.0330537, longitude: 28.9774289),
            description: "İBB Yıldız Korusu Şehir Tuvaleti",
            imageNames: ["no-image"],
            cost: "2₺",
            link: "https://www.google.com/maps/place/İBB+Yıldız+Korusu+Şehir+Tuvaleti+1/@41.0330537,28.9774289,21z/data=!4m10!1m2!2m1!1sibb+şehir+tuvaletleri!3m6!1s0x14cab73903725cc7:0xa73a7444b60a574a!8m2!3d41.0507656!4d29.0168241!15sChZpYmIgxZ9laGlyIHR1dmFsZXRsZXJpkgEUcHVibGljX21hbGVfYmF0aHJvb23gAQA!16s%2Fg%2F11tp94xg3y?entry=ttu"
        ),
        Location(
            name: "İBB Zincirlikuyu Metrobüs Şehir Tuvaleti (Levent Yönü)",
            status: "08:00-23:00",
            coordinates: CLLocationCoordinate2D(latitude: 41.0663089, longitude: 29.0135374),
            description: "İBB Zincirlikuyu Metrobüs Şehir Tuvaleti (Levent Yönü)",
            imageNames: ["no-image"],
            cost: "2₺",
            link: "https://www.google.com/maps/place/İBB+Zincirlikuyu+Metrobüs+Şehir+Tuvaleti(Levent+Yönü)/@41.0663089,29.0135374,21z/data=!4m10!1m2!2m1!1sibb+şehir+tuvaletleri!3m6!1s0x14cab71425286da9:0xa0e4cc27ea039ae2!8m2!3d41.0663089!4d29.0137949!15sChZpYmIgxZ9laGlyIHR1dmFsZXRsZXJpkgEUcHVibGljX21hbGVfYmF0aHJvb23gAQA!16s%2Fg%2F11sd_0sh60?entry=ttu"
        ),
        Location(
            name: "İBB Kartal Çeçenistan Parkı Şehir Tuvaleti",
            status: "08:00-23:00",
            coordinates: CLLocationCoordinate2D(latitude: 40.8881513, longitude: 29.1873879),
            description: "İBB Kartal Çeçenistan Parkı Şehir Tuvaleti",
            imageNames: ["no-image"],
            cost: "2₺",
            link: "https://www.google.com/maps/place/İBB+Kartal+Çeçenistan+Parkı+Şehir+Tuvaleti/@40.8881513,29.1873879,21z/data=!4m10!1m2!2m1!1sibb+şehir+tuvaletleri!3m6!1s0x14cac3b14f000e6f:0x6039d7914ec8d170!8m2!3d40.8881513!4d29.1876454!15sChZpYmIgxZ9laGlyIHR1dmFsZXRsZXJpkgEUcHVibGljX21hbGVfYmF0aHJvb23gAQA!16s%2Fg%2F11sf3hy3d1?entry=ttu"
        ),
        Location(
            name: "İBB Zincirlikuyu Metrobüs Şehir Tuvaleti(Beşiktaş Yönü)",
            status: "08:00-23:00",
            coordinates: CLLocationCoordinate2D(latitude: 41.0660672, longitude: 29.0113744),
            description: "İBB Zincirlikuyu Metrobüs Şehir Tuvaleti(Beşiktaş Yönü)",
            imageNames: ["no-image"],
            cost: "2₺",
            link: "https://www.google.com/maps/place/İBB+Zincirlikuyu+Metrobüs+Şehir+Tuvaleti(Beşiktaş+Yönü)/@41.0660672,29.0113744,18.42z/data=!4m10!1m2!2m1!1sibb+şehir+tuvaletleri!3m6!1s0x14cab752f83a1f89:0x263c4aba526ce2d2!8m2!3d41.0660169!4d29.0122029!15sChZpYmIgxZ9laGlyIHR1dmFsZXRsZXJpkgEUcHVibGljX21hbGVfYmF0aHJvb23gAQA!16s%2Fg%2F11tp95dr3b?entry=ttu"
        ),
        Location(
            name: "İBB Emirgan Sarı Köşk Şehir Tuvaleti",
            status: "08:00-23:00",
            coordinates: CLLocationCoordinate2D(latitude: 41.1072233, longitude: 29.05223),
            description: "İBB Emirgan Sarı Köşk Şehir Tuvaleti",
            imageNames: ["no-image"],
            cost: "2₺",
            link: "https://www.google.com/maps/place/İBB+Emirgan+Sarı+Köşk+Şehir+Tuvaleti/@41.1072233,29.05223,18z/data=!4m10!1m2!2m1!1sibb+şehir+tuvaletleri!3m6!1s0x14cacb9945ab1df1:0x93abe49051c12e77!8m2!3d41.1072233!4d29.0537696!15sChZpYmIgxZ9laGlyIHR1dmFsZXRsZXJpkgEUcHVibGljX21hbGVfYmF0aHJvb23gAQA!16s%2Fg%2F11tp92j4k0?entry=ttu"
        ),
        Location(
            name: "İBB Kemerburgaz Kent Ormanı 1. Kapı Şehir Tuvaleti",
            status: "08:00-23:00",
            coordinates: CLLocationCoordinate2D(latitude: 41.1601667, longitude: 28.889528),
            description: "İBB Kemerburgaz Kent Ormanı 1. Kapı Şehir Tuvaleti",
            imageNames: ["no-image"],
            cost: "2₺",
            link: "https://www.google.com/maps/place/İBB+Kemerburgaz+Kent+Ormanı+1.+Kapı+Şehir+Tuvaleti+2/@41.1601667,28.889528,18z/data=!4m10!1m2!2m1!1sibb+şehir+tuvaletleri!3m6!1s0x14cab3099510e53f:0xdbf02a3342e896d0!8m2!3d41.1601667!4d28.8915879!15sChZpYmIgxZ9laGlyIHR1dmFsZXRsZXJpkgEUcHVibGljX21hbGVfYmF0aHJvb23gAQA!16s%2Fg%2F11tp95fvyw?entry=ttu"
        ),
        
        Location(
            name: "İBB Topkapı Kaleiçi Şehir Tuvaleti",
            status: "08:00-23:00",
            coordinates: CLLocationCoordinate2D(latitude: 41.0208317, longitude: 28.8863845),
            description: "İBB Topkapı Kaleiçi Şehir Tuvaleti",
            imageNames: ["topkapı"],
            cost: "2₺",
            link: "https://www.google.com/maps/place/İBB+Topkapı+Kaleiçi+Şehir+Tuvaleti/@41.0208317,28.8863845,13z/data=!4m10!1m2!2m1!1sibb+şehir+tuvaletleri!3m6!1s0x14cabbc318d40347:0xa3ba7934e003b966!8m2!3d41.0208317!4d28.9275832!15sChZpYmIgxZ9laGlyIHR1dmFsZXRsZXJpkgEUcHVibGljX21hbGVfYmF0aHJvb23gAQA!16s%2Fg%2F11k50jg7zr?entry=ttu"
        ),
        Location(
            name: "İBB Çırpıcı Parkı",
            status: "08:00-23:00",
            coordinates: CLLocationCoordinate2D(latitude: 40.9994061, longitude: 28.8904139),
            description: "Çırpıcı Parkı içerisinde yer alan şehir tuvaleti.",
            imageNames: ["çırpıcı"],
            cost: "2₺",
            link: "https://www.google.com/maps/place/İstanbul+Büyükşehir+Belediyesi+Wc/@40.9994061,28.8904139,13z/data=!4m10!1m2!2m1!1sibb+şehir+tuvaletleri!3m6!1s0x14cabb6cc85c6fb1:0x64334bedb7bf27f9!8m2!3d40.9994061!4d28.8904139!15sChZpYmIgxZ9laGlyIHR1dmFsZXRsZXJpkgEUcHVibGljX21hbGVfYmF0aHJvb23gAQA!16s%2Fg%2F11dymqvj1d?entry=ttu"
        ),
        
        Location(
            name: "Kurtköy Viaport Şehir Parkı",
            status: "08:00-23:00",
            coordinates: CLLocationCoordinate2D(latitude:40.939782547088434, longitude: 29.31244307354166),
            description: "Kurtköy Viaport Şehir Parkı WC",
            imageNames: ["kurtköy"],
            cost: "3₺",
            link: "https://www.google.com/maps/place/Kurtköy+Viaport+Şehir+Parkı+WC/@40.9397765,29.0487958,45103m/data=!3m1!1e3!4m10!1m2!2m1!1sşehir+tuvaletleri!3m6!1s0x14cad1ee2a58ef2d:0x43b3bffedbd73c05!8m2!3d40.9397907!4d29.3124471!15sChLFn2VoaXIgdHV2YWxldGxlcmmSAQ9wdWJsaWNfYmF0aHJvb23gAQA!16s%2Fg%2F11v60yl5dl?entry=ttu"
        ),

        Location(
            name: "Mecidiyeköy Meydan",
            status: "08:00-23:00",
            coordinates: CLLocationCoordinate2D(latitude:41.06618481918836, longitude: 28.994213738167176),
            description: "Mecidiyeköy Meydan'da yer alan istasyon Metrobüs ve Metro istasyonları dışında yer almaktadır.",
            imageNames: ["no-image"],
            cost: "3₺",
            link: ""
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
