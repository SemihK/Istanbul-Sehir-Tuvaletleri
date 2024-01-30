//
//  LocationsView.swift
//  IBB Mobil Tuvalet
//
//  Created by Semih Kesgin on 2.06.2023.


import SwiftUI
import MapKit

struct LocationsView: View {
    @State private var showingOnboarding = true
    @State private var isInfoPageViewPresented = false
  //  @StateObject private var toastModel = ToastModel()
    
    @EnvironmentObject private var vm: LocationsViewModel
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    let maxWidthForIpad: CGFloat = 700
    
    
    
    var body: some View {
        ZStack {
            mapLayer
                .ignoresSafeArea()
                .fullScreenCover(isPresented: $showingOnboarding, content: {
                    OnboardingView()
                        .edgesIgnoringSafeArea(.all)
                })
                .preferredColorScheme(.dark)
            VStack(spacing: 0) {
               /* header
                    .padding()
                    .frame(maxWidth: maxWidthForIpad)
               */
                Spacer()
                locationsPreviewStack
                
                    .overlay(
                        info
                            .position(x: UIScreen.main.bounds.width - 45, y: -470)
                            .animation(.none, value: 0)
                                    )
                 
                
   
                
            }
        }
        .sheet(item: $vm.sheetLocation, onDismiss: nil) { location in
            LocationDetailView(location: location)
        }
        
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
            .environmentObject(LocationsViewModel())
    }
}

extension LocationsView {
    
    
    private var mapLayer: some View {
        Map(coordinateRegion: $vm.mapRegion,
            annotationItems: vm.locations,
            annotationContent: { location in
            MapAnnotation(coordinate: location.coordinates) {
                LocationMapAnnotationView()
                    .scaleEffect(vm.mapLocation == location ? 1 : 0.7)
                    .shadow(radius: 10)
                    .onTapGesture {
                        vm.showNextLocation(location: location)
                    }
            }
            
        })
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
    
    private var info: some View {
        Button {
            isInfoPageViewPresented.toggle()
        } label: {
            Image(systemName: "info.circle.fill")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
        }
        .buttonStyle(.automatic)
        .fullScreenCover(isPresented: $isInfoPageViewPresented) {
            InfoPageView()
        }
    }
    
    
}
         
     


// MARK temporary closed

/* private var header: some View {
 VStack {
     Button(action: vm.toggleLocationsList) {
         Text(vm.mapLocation.name)
             .font(.title2)
             .fontWeight(.black)
             .foregroundColor(.primary)
             .frame(height: 55)
             .frame(maxWidth: .infinity)
             .animation(.none, value: vm.mapLocation)
             .overlay(alignment: .leading) {
                 Image(systemName: "arrow.down")
                     .font(.headline)
                     .foregroundColor(.primary)
                     .padding()
                     .rotationEffect(Angle(degrees: vm.showLocationsList ? 180 : 0))
             }
     }
     
     if vm.showLocationsList {
         LocationsListView()
     }
 }
 .background(.thickMaterial)
 .cornerRadius(10)
 .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 15)
}
*/


// Toast Bildirim

/*
 private var header: some View {
     VStack {
         
         ZStack {
             
             RoundedRectangle(cornerRadius: 50)
                 .foregroundColor(Color.accentColor.opacity(1))
                 .frame(height: 50)
             
             
             HStack {
                 Image(systemName: "tram.fill")
                     .foregroundColor(.white)
                     .padding(.leading, 10)
                 
                 Text("Metro istasyonları içerisinde WC bulunmaktadır.")
                     .foregroundColor(.white)
                     .font(.footnote)
                     .fontWeight(.bold)
                 
             }
         }
         .transition(.opacity)
                 .animation(.easeInOut(duration: 0.5))
         
     }
 }
 */
