//
//  OnboardingView.swift
//  IBB Sehir Tuvalet
//
//  Created by Semih Kesgin on 29.01.2024.
//

//
//  OnboardingView.swift
//  onboardingtest
//
//  Created by Semih Kesgin on 29.01.2024.
//

import SwiftUI
import UIOnboarding

struct OnboardingView: UIViewControllerRepresentable {
    typealias UIViewControllerType = UIOnboardingViewController

    class Coordinator: NSObject, UIOnboardingViewControllerDelegate {
        func didFinishOnboarding(onboardingViewController: UIOnboardingViewController) {
            onboardingViewController.dismiss(animated: true, completion: nil)
        }
    }
    
    func makeUIViewController(context: Context) -> UIOnboardingViewController {
        let onboardingController: UIOnboardingViewController = .init(withConfiguration: .setUp())
        onboardingController.delegate = context.coordinator
        return onboardingController
    }
    
    
    func updateUIViewController(_ uiViewController: UIOnboardingViewController, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        return .init()
    }
    
    
}


#Preview {
    OnboardingView()
}
