//
//  LocationPreviewView.swift
//  IBB Mobil Tuvalet
//
//  Created by Semih Kesgin on 6.06.2023.
//

import SwiftUI
import MapKit


struct LocationPreviewView: View {
    @EnvironmentObject private var vm2: LocationMapViewModel
    @EnvironmentObject private var vm: LocationsViewModel
    let location: Location
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 0) {
            VStack(alignment: .leading, spacing: 16) {
                imageSection
                titleSection
            }
            VStack(spacing: 10) {
                learnMoreButton
                nextButton
            }
        }
        .padding(10)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.ultraThinMaterial)
                .offset(y: 65)
        )
        .cornerRadius(10)
        }
                    }

struct LocationPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()
            
            LocationPreviewView(location: LocationsDataService.locations.first!)
                .padding()
        }
        .environmentObject(LocationsViewModel())
    }
}

extension LocationPreviewView {
    
    private var imageSection: some View {
        ZStack {
            if let imageName = location.imageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
            }
        }
        .padding(6)
        .background(Color.white)
        .cornerRadius(10)
    }
    
    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(location.name)
                .font(.title2)
                .fontWeight(.bold)
            
            Text(location.status)
                .font(.subheadline)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
        
    private var learnMoreButton: some View {
        Button {
            vm.sheetLocation = location
        } label: {
            Text("Detaylar")
                .font(.headline)
                .frame(width: 125, height: 35)
        }
        .buttonStyle(.borderedProminent)
    }
    
    private var nextButton: some View {
            return Button(action: {
                if let destinationCoordinate = vm.mapLocation?.coordinates {
                    openInMaps(destinationCoordinate: destinationCoordinate)
                }
            }) {
                Text("Yol Tarifi")
                    .font(.headline)
                    .frame(width: 125, height: 35)
                    .foregroundColor(.white)
            }
            .buttonStyle(.borderedProminent)
                .tint(.pink)
        }
        
        private func openInMaps(destinationCoordinate: CLLocationCoordinate2D) {
            let destinationPlacemark = MKPlacemark(coordinate: destinationCoordinate)
            let destinationMapItem = MKMapItem(placemark: destinationPlacemark)
            destinationMapItem.name = "Hedef Lokasyon"
            
            // Harita uygulamasında hedef lokasyonu aç
            MKMapItem.openMaps(with: [destinationMapItem], launchOptions: [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving])
        }
    }

