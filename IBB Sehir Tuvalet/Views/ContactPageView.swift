//
//  ContactPageView.swift
//  Istanbul City Toilets
//
//  Created by Semih Kesgin on 26.03.2024.
//

import SwiftUI
import MessageUI

struct ContactPageView: View {
    @State private var isShowingMailView = false
    
    var body: some View {
        VStack {
            Text("Hakkında")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding()
                        
                        CardView(title: "Yardım", content: "Kullanmakta olduğunuz bu uygulama gönüllü olarak tarafımca geliştirilmiştir. Veriler ve istasyon durumları anlık olarak kontrol edilmemektedir. Lütfen herhangi bir aksaklık ve eksiklik durumunu Bize Ulaş kısmından bana yazınız.  ")
                            .padding()
                        
                        CardView(title: "Yasal Uyarı", content: "Bu uygulama yalnızca bilgilendirme amaçlıdır ve herhangi bir işletme sorumluluğu gözetmez. İstasyon bilgileri eksik veya operasyondan farklı olabilir. Kullanımı kendi sorumluluğunuzdadır.")
                            .padding()
            
            Button(action: {
                self.isShowingMailView.toggle()
            }) {
                Text("Geri Bildirim Gönder")
                    .font(.headline)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .sheet(isPresented: $isShowingMailView) {
                MailView()
            }
        }
        .padding()
    }
}

struct MailView: View {
    @State private var result: Result<MFMailComposeResult, Error>? = nil
    @State private var isShowingMailView = false
    
    var body: some View {
        VStack {
            Text("Bize Ulaşın")
                .font(.title)
                .padding()
            
            Button(action: {
                self.isShowingMailView.toggle()
            }) {
                Text("E-posta Gönder")
                    .font(.headline)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .disabled(!MFMailComposeViewController.canSendMail())
            .sheet(isPresented: $isShowingMailView) {
                MailComposeViewControllerWrapper(result: $result)
            }
        }
        .padding()
    }
}
struct MailComposeViewControllerWrapper: UIViewControllerRepresentable {
    @Binding var result: Result<MFMailComposeResult, Error>?
    
    func makeUIViewController(context: Context) -> MFMailComposeViewController {
        let mailComposeVC = MFMailComposeViewController()
        mailComposeVC.setToRecipients(["semihkesgin@icloud.com"])
        mailComposeVC.setSubject("Geri Bildirim")
        mailComposeVC.setMessageBody("Merhaba, birkaç geri bildirimim var...", isHTML: false)
        mailComposeVC.mailComposeDelegate = context.coordinator
        return mailComposeVC
    }
    
    func updateUIViewController(_ uiViewController: MFMailComposeViewController, context: Context) {
        // Güncelleme yapmaya gerek yok
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, MFMailComposeViewControllerDelegate {
        var parent: MailComposeViewControllerWrapper
        
        init(_ parent: MailComposeViewControllerWrapper) {
            self.parent = parent
        }
        
        func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
            if let error = error {
                parent.result = .failure(error)
            } else {
                parent.result = .success(result)
            }
            controller.dismiss(animated: true)
        }
    }
}

struct CardView: View {
    var title: String
    var content: String
    
    var body: some View {
        VStack {
            Text(title)
                .font(.headline)
                .foregroundColor(.blue)
                .padding(.bottom, 4)
            
            Text(content)
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
        }
    }
    
    
    
    struct Content: PreviewProvider {
        static var previews: some View {
            ZStack {
                ContactPageView()
            }
        }
    }}
