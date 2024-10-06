//
//  Istanbul_City_ToiletsApp.swift
//  Istanbul City Toilets
//
//  Created by Semih Kesgin on 21.03.2024.
//

import SwiftUI

@main
struct Istanbul_City_ToiletsApp: App {
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            if #available(iOS 17.0, *) {
                LocationsView()
                    .environmentObject(vm)
            } else {
                // Fallback on earlier versions
            }
        }
    }
}
