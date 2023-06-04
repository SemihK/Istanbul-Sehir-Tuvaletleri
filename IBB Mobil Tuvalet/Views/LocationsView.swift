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
            
            VStack(spacing: 0){
                header
                .padding()
            Spacer()
                }
            }
        }
    }


struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
    }
}

extension LocationsView {
    private var header: some View{
        VStack {
            Text(vm.mapLocation.name)
            .font(.title2)
                .fontWeight(.black)
                .foregroundColor(.primary)
                .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .overlay(alignment: .leading) {
                Image(systemName: "arrow.down")
                    .font(.headline)
                    .foregroundColor(.primary)
                    .padding()
            }
            LocationsListView()
        }
        .background(.thickMaterial)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.3), radius: 20, x:0, y:15)
    }
}
