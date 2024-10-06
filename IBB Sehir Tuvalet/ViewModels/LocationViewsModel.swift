import Foundation
import MapKit
import SwiftUI
import CoreLocation
import Combine

class LocationsViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    
    // All loaded locations
    @Published var locations: [Location]
    
    // Current location on map
    @Published var mapLocation: Location? = nil {
        didSet {
            if let mapLocation = mapLocation {
                updateMapRegion(location: mapLocation)
            }
        }
    }
    
    // Current region on map
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)



    // Show list of locations
    @Published var showLocationsList: Bool = false
    
    // Show location detail via sheet
    @Published var sheetLocation: Location? = nil
    
    // User's current location
    @Published var userLocation: CLLocation? = nil {
        didSet {
            if let userLocation = userLocation {
                mapRegion.center = userLocation.coordinate
            }
        }
    }
    
    private var locationManager = CLLocationManager()
    private var cancellables: Set<AnyCancellable> = Set<AnyCancellable>()
    
    override init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        
        super.init()
        
        DispatchQueue.global(qos: .background).async {
            self.setupLocationManager() // locationManager'ı ayarlamak için init içinde çağrılmalı
            
            // CLLocationManager.locationServicesEnabled() ve locationManager.requestWhenInUseAuthorization() işlemleri arka planda yapılır
            if CLLocationManager.locationServicesEnabled() {
                self.locationManager.requestWhenInUseAuthorization()
                self.locationManager.startUpdatingLocation()
            }
        }
        
        // Diğer setup ve initializasyon işlemleri buraya yazılabilir
    }
    
    // CLLocationManager'ı ayarlamak için fonksiyon
    private func setupLocationManager() {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
    }
    
    // Map bölgesini güncellemek için fonksiyon
    private func updateMapRegion(location: Location) {
        withAnimation(.easeInOut) {
            mapRegion = MKCoordinateRegion(
                center: location.coordinates,
                span: mapSpan)
        }
    }
    
    // Konum listesini açıp kapamak için fonksiyon
    func toggleLocationsList() {
        withAnimation(.easeInOut) {
            showLocationsList.toggle()
        }
    }
    
    // Bir sonraki konumu göstermek için fonksiyon
    func showNextLocation(location: Location) {
        withAnimation(.easeInOut) {
            mapLocation = location
            showLocationsList = false
        }
    }
    
    // CLLocationManagerDelegate fonksiyonları
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        userLocation = location
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Location Manager Error: \(error)")
    }
    
}
