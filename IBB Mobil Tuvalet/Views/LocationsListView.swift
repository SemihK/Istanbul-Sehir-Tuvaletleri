//
//  LocationsListView.swift
//  IBB Mobil Tuvalet
//
//  Created by Semih Kesgin on 4.06.2023.
//

import SwiftUI

struct LocationsListView: View {
    @EnvironmentObject private var vm: LocationViewModels
    
    // List view tıklanabilir değil. düzeltilmesi gerekiyor.
    var body: some View {
        List{
            ForEach(vm.locations) { location in
                listRowView(location: location)
                
            }
        }
    }
}

struct LocationsListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsListView()
            .environmentObject(LocationViewModels())
    }
}

extension LocationsListView{
    private func listRowView(location: Location) -> some View {
        HStack{
            if let imageName = location.imageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 45, height: 45)
                    .cornerRadius(10)
            }
            VStack(alignment: .leading) {
                Text(location.name)
                    .font(.headline)
                Text(location.cityName)
                    .font(.subheadline)
            }
            
        }
    }
    
}
