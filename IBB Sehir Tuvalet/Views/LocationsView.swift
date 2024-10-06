//
// LocationsView.swift
// IBB Mobil Tuvalet
//
// Created by Semih Kesgin on 2.06.2023.
//

import SwiftUI
import MapKit
import CoreLocation
import UserNotifications
import StoreKit

struct LocationsView: View {
    @State private var position: MapCameraPosition = .userLocation(followsHeading: true, fallback: .automatic)
    @State private var locationManager = CLLocationManager()
    @State private var showingOnboarding = false
    @Environment(\.requestReview) var requestReview
    @EnvironmentObject private var vm: LocationsViewModel
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @State private var isFirstLaunch = !UserDefaults.standard.bool(forKey: "hasLaunchedBefore")
    @State private var userTrackingMode: MapUserTrackingMode = .follow
    
    let maxWidthForIpad: CGFloat = 700
    
    var body: some View {
        ZStack {
            mapLayer
                .ignoresSafeArea()
                .fullScreenCover(isPresented: $showingOnboarding) {
                    OnboardingView()
                        .edgesIgnoringSafeArea(.all)
                }
                .mapControls {
                    MapUserLocationButton()
                    MapCompass()
                }
                .preferredColorScheme(.none)
                .onAppear {
                    if isFirstLaunch {
                        showingOnboarding = true
                        UserDefaults.standard.set(true, forKey: "hasLaunchedBefore")
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            requestReview()
                        }
                    }
                    requestLocationAuthorization()
                }
            VStack(spacing: 0) {
                Spacer()
                locationsPreviewStack
            }
        }
        .sheet(item: $vm.sheetLocation, onDismiss: nil) { location in
            LocationDetailView(location: location)
                .mapStyle(.standard(elevation: .flat, showsTraffic: false))
        }
    }
    
    private func requestLocationAuthorization() {
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    private var mapLayer: some View {
        Map(coordinateRegion: $vm.mapRegion,
            showsUserLocation: true,
            userTrackingMode: $userTrackingMode,
            annotationItems: vm.locations) { location in
            MapAnnotation(coordinate: location.coordinates) {
                LocationMapAnnotationView()
                    .scaleEffect(vm.mapLocation == location ? 1.2 : 0.8)
                    .onTapGesture {
                        vm.showNextLocation(location: location)
                    }
            }
        }
    }
    
    private var locationsPreviewStack: some View {
        ZStack {
            ForEach(vm.locations) { location in
                if vm.mapLocation == location {
                    LocationPreviewView(location: location)
                        .shadow(color: Color.black.opacity(0.3), radius: 20)
                        .padding()
                        .frame(maxWidth: maxWidthForIpad)
                        .frame(maxWidth: .infinity)
                        .transition(.asymmetric(
                            insertion: .move(edge: .trailing),
                            removal: .move(edge: .leading)))
                }
            }
        }
    }
    
    struct LocationsView_Previews: PreviewProvider {
        static var previews: some View {
            LocationsView()
                .environmentObject(LocationsViewModel())
        }
    }
}
