//
//  HomeView.swift
//  quran-app
//
//  Created by magistra aptam on 16/11/23.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var surahVM = SurahViewModel()
        var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing:24){
                VStack(alignment: .leading, spacing: 24){
                    Header()
                }
                
                ScrollView {
                    ForEach(surahVM.surah){ surah in
                        NavigationLink {
                            DetailSurahView(surahNumber: surah.nomor, surahName: surah.namaLatin)
                        } label: {
                            SurahComponent(name: surah.namaLatin, number: surah.nomor, place: surah.tempatTurun, verses: surah.nomor, nameInArab: surah.nama)
                                .padding(.vertical)
                        }
                    }
                }
                .onAppear{
                    Task {
                        do {
                            try await surahVM.getSurah()
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(CustomColor.DarkPurple)
        }
        .navigationBarBackButtonHidden(true)
    }
}

private struct Header: View{
    var body: some View{
        HStack{
            Text("Quran App")
                .fontWeight(.heavy)
                .font(.system(size: 20))
        }
        .frame(width: 327)
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
