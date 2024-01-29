//
//  SplashScreenView.swift
//  IBB Sehir Tuvalet
//
//  Created by Semih Kesgin on 29.01.2024.
//

import SwiftUI
import Lottie


struct SplashScreenView: View {
    var body: some View {
                ZStack(){
                    Color.primary
                                .edgesIgnoringSafeArea(.all)
                    LottieView(animation: .named("Splash"))
                        .playing(loopMode: .playOnce)
                }
            }
    }


#Preview {
    SplashScreenView()
}


