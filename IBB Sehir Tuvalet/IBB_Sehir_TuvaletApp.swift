//
//  IBB_Sehir_TuvaletApp.swift
//  IBB Sehir Tuvalet
//
//  Created by Semih Kesgin on 2.06.2023.
//

import SwiftUI


@main
struct SwiftfulMapAppApp: App {
    
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}

