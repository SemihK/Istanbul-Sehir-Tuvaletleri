//
//  LocationsDetailView.swift
//  IBB Mobil Tuvalet
//
//  Created by Semih Kesgin on 2.06.2023.
//


import SwiftUI
import MapKit
import LinkPresentation

struct LocationDetailView: View {
    @State private var isShowingContactPage = false
    @State private var isPesentingSheet = false
    @State private var isSlideOverCardPresented = false
    @State private var isShowingPhoneNumber = false
    @State private var phoneNumber = "153"
    @EnvironmentObject private var vm: LocationsViewModel
    let location: Location
    
    var body: some View {
        ScrollView {
            VStack {
                imageSection
                    .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
                
                VStack(alignment: .leading, spacing: 16) {
                    titleSection
                    Divider()
                    descriptionSection
                    Divider()
                    mapLayer
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            }
        }
        .ignoresSafeArea()
        .background(.ultraThinMaterial)
        .overlay(backButton, alignment: .topLeading)
    }
}

extension LocationDetailView {
    private var imageSection: some View {
        TabView {
            ForEach(location.imageNames, id: \.self) { imageName in
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIDevice.current.userInterfaceIdiom == .pad ? nil : UIScreen.main.bounds.width)
                    .clipped()
            }
        }
        .frame(height: 500)
        .tabViewStyle(PageTabViewStyle())
    }
    
    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(location.name)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    Text(location.status.isEmpty ? "Veri Bulunamadı" : location.status)
                        .foregroundColor(.white)
                        .font(.caption2)
                        .padding()
                        .background(Color.accentColor)
                        .cornerRadius(10)
                    
                    badgeView(imageName: "figure.stand", text: "Erkek", backgroundColor: .black)
                    badgeView(imageName: "figure.dress.line.vertical.figure", text: "Kadın", backgroundColor: .pink)
                    badgeView(imageName: "figure.roll", text: "Engelli", backgroundColor: .blue)
                }
            }
        }
    }
    
    private var descriptionSection: some View {
        VStack(spacing: 10) {
            infoView(systemImage: "captions.bubble.fill", text: location.description, backgroundColor: .accentColor)
            infoView(systemImage: "tram.circle", text: "Metro İstanbul istasyonları içerisinde Erkek ve Kadın tuvaletleri bulunmaktadır.", backgroundColor: .green)
            
            Button(action: {
                self.isShowingContactPage.toggle()
            }) {
                HStack {
                    Image(systemName: "envelope.fill")
                    Text("Geri Bildirim")
                        .font(.headline)
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            .sheet(isPresented: $isShowingContactPage) {
                ContactPageView()
            }
            
            Divider()
            
            HStack {
                Image(systemName: "phone.fill")
                    .foregroundColor(.blue)
                    .frame(width: 20, height: 20)
                Text("Beyaz Masa'yı aramak için görsele tıklayın.")
                    .font(.caption)
            }
            
            Button(action: {
                isShowingPhoneNumber.toggle()
            }) {
                Image("alo153")
                    .resizable()
                    .scaledToFit()
                    .onTapGesture {
                        isShowingPhoneNumber.toggle()
                        if let phoneURL = URL(string: "tel://\(phoneNumber)"), UIApplication.shared.canOpenURL(phoneURL) {
                            UIApplication.shared.open(phoneURL)
                        }
                    }
            }
        }
        .padding(.horizontal)
        .cornerRadius(10)
    }
    
    private func infoView(systemImage: String, text: String, backgroundColor: Color) -> some View {
        HStack {
           // Image(systemImage: systemImage)
            Text(text)
        }
        .foregroundColor(.white)
        .font(.callout)
        .padding()
        .background(backgroundColor)
        .cornerRadius(10)
    }
    
    private func badgeView(imageName: String, text: String, backgroundColor: Color) -> some View {
        HStack {
            Image(systemName: imageName)
            Text(text)
        }
        .lineLimit(1)
        .font(.caption2)
        .foregroundColor(.white)
        .padding()
        .background(backgroundColor)
        .cornerRadius(10)
    }
    
    private var mapLayer: some View {
        Map(coordinateRegion: .constant(MKCoordinateRegion(
            center: location.coordinates,
            span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))),
            annotationItems: [location]) { location in
            MapAnnotation(coordinate: location.coordinates) {
                LocationMapAnnotationView()
                    .shadow(radius: 10)
            }
        }
        .allowsHitTesting(false)
        .aspectRatio(1, contentMode: .fit)
        .cornerRadius(30)
    }
    
    private var backButton: some View {
        Button {
            vm.sheetLocation = nil
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
                .padding(16)
                .foregroundColor(.primary)
                .background(.thickMaterial)
                .cornerRadius(10)
                .shadow(radius: 4)
                .padding()
        }
    }
}
