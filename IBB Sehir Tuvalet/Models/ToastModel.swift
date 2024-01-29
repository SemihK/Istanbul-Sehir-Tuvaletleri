//
//  ToastModel.swift
//  IBB Sehir Tuvalet
//
//  Created by Semih Kesgin on 29.01.2024.
//

import SwiftUI

class ToastModel: ObservableObject {
    @Published var showToast = false

    func showDefaultToast() {
        showToast = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.showToast = false
        }
    }
}
