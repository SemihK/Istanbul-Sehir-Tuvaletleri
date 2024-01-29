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
                Color.accentColor
                    .edgesIgnoringSafeArea(.all)
                LottieView(animation: .named("Splash-White"))
                    .playing(loopMode: .playOnce)
             Spacer()
                VStack(){
                    Spacer()
                    HStack(){
                        
                        Text("Istanbul")
                              .foregroundStyle(.white)
                              .font(.system(size: 20, weight: .semibold))
                              .offset(x:50,y:0)
                        LottieView(animation: .named("Kalp-2"))
                            .playing(loopMode: .autoReverse)
                            .offset(x: 10, y: 0)
                        
                    }
                    
                    
                
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
}


#Preview {
    SplashScreenView()
}



