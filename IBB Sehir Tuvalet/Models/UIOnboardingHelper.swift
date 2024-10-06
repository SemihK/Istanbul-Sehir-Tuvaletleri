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
      let key = "Hosgeldiniz"
      let localizedString = NSLocalizedString(key, comment: "")
      return NSMutableAttributedString(string: localizedString, attributes: [.foregroundColor: UIColor.label])
    }
    
    // Second Title Line
    // App Name
    static func setUpSecondTitleLine() -> NSMutableAttributedString {
        .init(string: Bundle.main.displayName ?? "Istanbul", attributes: [
            .foregroundColor: UIColor.init(named: "AccentColor") ?? UIColor.init(red: 0.654, green: 0.618, blue: 0.494, alpha: 1.0)
        ])
    }

    static func setUpFeatures() -> Array<UIOnboardingFeature> {
      let feature1Icon = UIImage(named: "feature-1")!
      let feature2Icon = UIImage(named: "feature-2")!
      let feature3Icon = UIImage(named: "feature-3")!
      let feature4Icon = UIImage(named: "feature-4")!

      let key1Title = "Seyahat Halinde"
      let key1Description = "Yolculuğunuz esnasında ihtiyaçlarınız için en yakın istasyonu arayın."
      let key2Title = "Kullanıcı Dostu"
      let key2Description = "Sade arayüz ile üyelik gerektirmeden en yakın istasyonu kolaylıkla bulun."
      let key3Title = "Temiz ve Güvenilir"
      let key3Description = "Şehir Tuvaletleri İstanbul Büyükşehir Belediyesi hizmetidir."
      let key4Title = "Üyelik Yok"
      let key4Description = "Bu hizmet gönüllü bir oluşumdur herhangi bir kar amacı gütmemektedir. Ücretsiz bir şekilde faydalanabilirsiniz."

      let localizedTitle1 = NSLocalizedString(key1Title, comment: "")
      let localizedDescription1 = NSLocalizedString(key1Description, comment: "")
      let localizedTitle2 = NSLocalizedString(key2Title, comment: "")
      let localizedDescription2 = NSLocalizedString(key2Description, comment: "")
      let localizedTitle3 = NSLocalizedString(key3Title, comment: "")
      let localizedDescription3 = NSLocalizedString(key3Description, comment: "")
      let localizedTitle4 = NSLocalizedString(key4Title, comment: "")
      let localizedDescription4 = NSLocalizedString(key4Description, comment: "")

      return [
        UIOnboardingFeature(icon: feature1Icon, title: localizedTitle1, description: localizedDescription1),
        UIOnboardingFeature(icon: feature2Icon, title: localizedTitle2, description: localizedDescription2),
        UIOnboardingFeature(icon: feature3Icon, title: localizedTitle3, description: localizedDescription3),
        UIOnboardingFeature(icon: feature4Icon, title: localizedTitle4, description: localizedDescription4),
      ]
    }

    
    static func setUpNotice() -> UIOnboardingTextViewConfiguration {
        return .init(icon: .init(named: "onboarding-notice-icon"),
                     text: "Developed and designed by Semih Kesgin",
                     linkTitle: "Daha fazlası için...",
                     link: "https://www.linkedin.com/in/semihkesgin",
                     tint: .init(named: "camou") ?? .init(red: 0.654, green: 0.618, blue: 0.494, alpha: 1.0))
    }
    
    static func setUpButton() -> UIOnboardingButtonConfiguration {
        let keyTitle = "Devam Et"
        let localizedTitle = NSLocalizedString(keyTitle, comment: "")

        return UIOnboardingButtonConfiguration(
           title: localizedTitle,
           backgroundColor: .init(named: "AccentColor") ?? .init(red: 0.654, green: 0.618, blue: 0.494, alpha: 1.0)
        )
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
