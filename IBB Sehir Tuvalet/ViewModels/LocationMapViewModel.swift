//
//  LocationMapViewModel.swift
//  Istanbul City Toilets
//
//  Created by Semih Kesgin on 21.03.2024.
//

import SwiftUI
import MapKit

class LocationMapViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    struct LocationMapViewModel: View {
        
        // Örnek bir lokasyon koordinatı
        let destinationCoordinate = CLLocationCoordinate2D(latitude: 41.0082, longitude: 28.9784)
        
        var body: some View {
            Button(action: {
                openInMaps(destinationCoordinate: destinationCoordinate)
            }) {
                Text("Haritada Göster")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        
        func openInMaps(destinationCoordinate: CLLocationCoordinate2D) {
            let destinationPlacemark = MKPlacemark(coordinate: destinationCoordinate)
            let destinationMapItem = MKMapItem(placemark: destinationPlacemark)
            destinationMapItem.name = "Hedef Lokasyon"
            
            // Harita uygulamasında hedef lokasyonu aç
            MKMapItem.openMaps(with: [destinationMapItem], launchOptions: [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving])
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            LocationMapViewModel()
        }
    }
}
