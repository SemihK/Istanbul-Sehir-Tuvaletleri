//
//  InfoPageView.swift
//  IBB Sehir Tuvalet
//
//  Created by Semih Kesgin on 30.01.2024.
//

import SwiftUI

struct InfoPageView: View {
    @State private var isLocationPreviewPressented = false
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Button {
                 
                  isLocationPreviewPressented.toggle()
              } label: {
                  Image(systemName: "xmark")
                      .font(.headline)
                      .foregroundColor(.accentColor)
                      .position(x: 10, y: 0)
                      
              }
              .buttonStyle(.borderedProminent)
              .foregroundColor(.white)
              .padding(.leading, 10)
              .fullScreenCover(isPresented: $isLocationPreviewPressented) {
                  LocationsView()
              }
          }
    }




#Preview {
    InfoPageView()
}



/*
 Image(systemName: "xmark")
     .font(.headline)
     .padding(16)
     .foregroundColor(.black)
     .background(.thickMaterial)
     .cornerRadius(10)
     .shadow(radius: 4)
     .padding()
     .offset(x:-130 , y:-350 )
*/
