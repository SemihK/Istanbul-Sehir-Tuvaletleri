//
//  IBB_Mobil_TuvaletApp.swift
//  IBB Mobil Tuvalet
//
//  Created by Semih Kesgin on 2.06.2023.
//

import SwiftUI

@main
struct IBB_Mobil_TuvaletApp: App {
    
    @StateObject private var vm = LocationViewModels()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
