//
//  LocationPreviewView.swift
//  IBB Mobil Tuvalet
//
//  Created by Semih Kesgin on 6.06.2023.
//

import SwiftUI

struct LocationPreviewView: View {
    
    let location: Location
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 45) {
            VStack(alignment: .leading , spacing: 16) {
                imageSection
                titleSection
            }
            
            VStack(spacing: 8){
                moreButton
                nextButton
            }
        }
        .padding(20)
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
            Color.green.ignoresSafeArea()
            
            LocationPreviewView(location: LocationsDataService.locations.first!)
                .padding()
        }
    }
    
}

extension LocationPreviewView {
    
    private var imageSection : some View {
        ZStack{
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
}

extension LocationPreviewView {
    
    private var titleSection : some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(location.name)
                .font(.title2)
                .fontWeight(.bold)
            Text(location.cityName)
                .font(.subheadline)
                
                
        }
    }
    
    private var moreButton : some View {
        Button {
            
        } label: {
         Text("Detaylar")
                .font(.headline)
                .frame(width: 125, height: 30)
        }
        .buttonStyle(.borderedProminent)
        
    }
    
    private var nextButton : some View {
        Button {
            
        } label: {
         Text("Sıradaki")
                .font(.headline)
                .frame(width: 125, height: 30)
        }
        .buttonStyle(.bordered)
    }
}
