//
//  LocationsView.swift
//  IBB Mobil Tuvalet
//
//  Created by Semih Kesgin on 2.06.2023.
//

import SwiftUI
import MapKit


struct LocationsView: View {
    
    @StateObject private var vm = LocationViewModels()
   
    var body: some View {
        ZStack{
            Map(coordinateRegion: $vm.mapRegion)
                .ignoresSafeArea()
            }
        }
    }


struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
    }
}
