//
//  InfoPageView.swift
//  IBB Sehir Tuvalet
//
//  Created by Semih Kesgin on 30.01.2024.
//

import SwiftUI
import Lottie

struct InfoPageView_Previews: PreviewProvider {
    static var previews: some View {
        InfoPageView()
            .environmentObject(LocationsViewModel()) // Eğer environmentObject kullanılıyorsa ekleyin
    }
}

struct InfoPageView: View {
    let developerEmail = "semihkesgin@outlook.com"
    @State private var isLocationPreviewPresented = false
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        
        ScrollView{
            VStack(alignment: .leading, spacing: 16) {
                LottieView(animation: .named("Kalp-2"))
                    .playing(loopMode: .autoReverse)
                    .frame(maxWidth: .infinity, alignment: .top)
                    titleSection
                    descriptionSection
                    Divider()
                    contactSection
                }
            
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    
        Button {
            isLocationPreviewPresented.toggle()
        } label: {
            Label("Ana Sayfa", systemImage: "house.fill")
                .padding()
                .background(Color.pink)
                .foregroundColor(.white)
                .cornerRadius(8)
                .fullScreenCover(isPresented: $isLocationPreviewPresented) {
                    LocationsView()
                }
        }
    }
}

extension InfoPageView{
    
    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Hakkında")
                .font(.largeTitle)
                .fontWeight(.bold)
           
        }
    }
    
    private var descriptionSection: some View{
        VStack(alignment: .leading, spacing: 16) {
            Text("EN")
                .font(.headline)
            Text("We are pleased to present our application, a completely free and open-source software designed for the benefit of the Istanbul community. Developed with the utmost dedication and commitment, this application is a service provided to the public, with no associated obligations. It is neither managed nor operated by any specific entity. All data utilized within the application is sourced directly from the Istanbul Metropolitan Municipality, ensuring accuracy and reliability. We encourage users to provide feedback to help us improve the application. For any inquiries or feedback, please do not hesitate to contact us.")
                .font(.subheadline)
                .foregroundColor(.secondary)
            Text("TR")
                .font(.headline)
            Text("Memnuniyetle sunarız ki, bu uygulama tamamen ücretsiz ve açık kaynak kodlu bir yazılımdır. İstanbul halkının yararına geliştirilmiş bu uygulama, büyük bir özveri ve bağlılıkla oluşturulmuştur. Toplum yararı niteliğinde olan bu uygulama, hiçbir taahhüt altında bulunmamakla birlikte özel bir kuruluş tarafından yönetilmemekte veya işletilmemektedir. Uygulama içinde kullanılan veriler, tamamen İstanbul Büyükşehir Belediyesi tarafından sağlanmaktadır, Uygulamayı geliştirmemize yardımcı olmak adına geri bildirimlerinizi bekliyoruz. Herhangi bir soru veya geri bildirim için lütfen bizimle iletişime geçmekten çekinmeyin.")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
            
        }
    }
    private var contactSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            
            Text("Contact")
                .font(.title2)
                .fontWeight(.bold)
            
            Text("The application is developed by Semih Kesgin, a lover from Istanbul. You can reach me via the provided email address for any inquiries or feedback regarding the application.")
                .font(.subheadline)
                .foregroundStyle(.secondary)
            Link(developerEmail, destination: URL(string: "mailto:\(developerEmail)")!)
                .font(.subheadline)
                .fontWeight(.bold)
                           
        }
        
    }
    
    
    
    #Preview {
        InfoPageView()
    }
    
    
    
    /*
     Image(systemName: "xmark")
     .font(.headline)
     .padding(16)
     .foregroundColor(.black)
     .background(.thickMaterial)
     .cornerRadius(10)
     .shadow(radius: 4)
     .padding()
     .offset(x:-130 , y:-350 )
     */
}
