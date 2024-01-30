//
//  UIOnboardingHelper.swift
//  IBB Sehir Tuvalet
//
//  Created by Semih Kesgin on 29.01.2024.
//

import UIKit
import UIOnboarding

struct UIOnboardingHelper {
    static func setUpIcon() -> UIImage {
        return Bundle.main.appIcon ?? .init(named: "AppIcon")!
    }
    
    // First Title Line
    // Welcome Text
    static func setUpFirstTitleLine() -> NSMutableAttributedString {
        .init(string: "Welcome to", attributes: [.foregroundColor: UIColor.label])
    }
    
    // Second Title Line
    // App Name
    static func setUpSecondTitleLine() -> NSMutableAttributedString {
        .init(string: Bundle.main.displayName ?? "Istanbul", attributes: [
            .foregroundColor: UIColor.init(named: "AccentColor") ?? UIColor.init(red: 0.654, green: 0.618, blue: 0.494, alpha: 1.0)
        ])
    }

    static func setUpFeatures() -> Array<UIOnboardingFeature> {
        return .init([
            .init(icon: .init(named: "feature-1")!,
                  title: "Seyahat Ederken",
                  description: "Yolculuğunuz esnasında ihtiyaçlarınız için en yakın istasyonu arayın."),
            .init(icon: .init(named: "feature-2")!,
                  title: "Kullanıcı Dostu",
                  description: "Sade arayüz ile en yakın istasyonu kolaylıkla bulun."),
            .init(icon: .init(named: "feature-3")!,
                  title: "Temiz ve Güvenilir",
                  description: "İstanbul Büyükşehir Belediyesi hizmetidir."),
            .init(icon: .init(named: "feature-4")!,
                  title: "Gönüllü",
                  description: "Uygulama tamamen ücretsiz ve reklamsız İstanbul halkına hizmet etmektedir.")
        ])
    }
    
    static func setUpNotice() -> UIOnboardingTextViewConfiguration {
        return .init(icon: .init(named: "onboarding-notice-icon"),
                     text: "Developed and designed by Semih Kesgin",
                     linkTitle: "Daha fazlası için...",
                     link: "https://www.linkedin.com/in/semihkesgin",
                     tint: .init(named: "camou") ?? .init(red: 0.654, green: 0.618, blue: 0.494, alpha: 1.0))
    }
    
    static func setUpButton() -> UIOnboardingButtonConfiguration {
        return .init(title: "Continue",
                     backgroundColor: .init(named: "AccentColor") ?? .init(red: 0.654, green: 0.618, blue: 0.494, alpha: 1-0))
    }
}

extension UIOnboardingViewConfiguration {
    static func setUp() -> UIOnboardingViewConfiguration {
        return .init(appIcon: UIOnboardingHelper.setUpIcon(),
                     firstTitleLine: UIOnboardingHelper.setUpFirstTitleLine(),
                     secondTitleLine: UIOnboardingHelper.setUpSecondTitleLine(),
                     features: UIOnboardingHelper.setUpFeatures(),
                     textViewConfiguration: UIOnboardingHelper.setUpNotice(),
                     buttonConfiguration: UIOnboardingHelper.setUpButton())
    }
}
