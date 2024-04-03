//
//  DetailSurahView.swift
//  quran-app
//
//  Created by magistra aptam on 16/11/23.
//

import SwiftUI

struct DetailSurahView: View {
    @State var surahNumber: Int
    @ObservedObject var surahVM = SurahViewModel()
    var body: some View {
        VStack{
            ScrollView {
                ForEach(surahVM.detailSurah){item in
                    AyahsComponent(number: "\(item.id)", surah: item.ar, surahInIndo: item.idn)
                }
            }
            .onAppear{
                Task {
                    do {
                        try await surahVM.getDetailSurah(number: surahNumber)
                    } catch {
                        print(error)
                    }
                }
            }
        }
        .frame(maxWidth: .infinity)
        .background(CustomColor.DarkPurple)
    }
}




struct DetailSurahView_Previews: PreviewProvider {
    static var previews: some View {
        DetailSurahView(surahNumber: 4)
    }
}
