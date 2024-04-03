//
//  SurahBanner.swift
//  quran-app
//
//  Created by magistra aptam on 16/11/23.
//

import SwiftUI

struct SurahBanner: View {
    @State var surahName = "Al-Fatiha"
    @State var surahNameIndo = "Pembukaan"
    @State var verses = 7
    @State var place = "Mecca"
    var body: some View {
        ZStack{
            Image("surah-bg")
            VStack(spacing: 32){
                VStack(spacing:8){
                    Text(surahName)
                        .font(.system(size: 26))
                        .fontWeight(.bold)
                    Text(surahNameIndo)
                    
                    Divider()
                        .frame(maxWidth: 200)
                        .overlay(.white)
                    HStack{
                        Text(place)
                        Text("\(verses) - verses")
                    }
                    
                }
                
                Image("bismillah")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 214)
            }
            .padding(28)
            .foregroundColor(.white)
        }
    }
}

struct SurahBanner_Previews: PreviewProvider {
    static var previews: some View {
        SurahBanner()
    }
}
