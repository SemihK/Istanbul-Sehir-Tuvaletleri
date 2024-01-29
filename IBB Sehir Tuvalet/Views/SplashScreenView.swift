//
//  SplashScreenView.swift
//  IBB Sehir Tuvalet
//
//  Created by Semih Kesgin on 29.01.2024.
//

import SwiftUI
import Lottie


struct SplashScreenView: View {
    @State var isActive : Bool = false
    var body: some View {
        if isActive {
            LocationsView()
        } else {
            ZStack(){
                Color.primary
                    .edgesIgnoringSafeArea(.all)
                LottieView(animation: .named("Splash"))
                    .playing(loopMode: .playOnce)
             
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5.5) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}


#Preview {
    SplashScreenView()
}



