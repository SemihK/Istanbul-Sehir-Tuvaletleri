//
//  LocationsViewModels.swift
//  IBB Mobil Tuvalet
//
//  Created by Semih Kesgin on 2.06.2023.
//

import Foundation

class LocationViewModels: ObservableObject {
    @Published var locations: [Location]
    
    init() {
        let locations =  LocationsDataService.locations
        self.locations = locations
    }
    
}
