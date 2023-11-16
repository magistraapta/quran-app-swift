//
//  SurahBanner.swift
//  quran-app
//
//  Created by magistra aptam on 16/11/23.
//

import SwiftUI

struct SurahBanner: View {
    var body: some View {
        ZStack{
            Image("surah-bg")
            VStack(spacing: 32){
                VStack(spacing:8){
                    Text("Al-Fatiha")
                        .font(.system(size: 26))
                        .fontWeight(.bold)
                    Text("The Opening")
                    
                    Divider()
                        .frame(maxWidth: 200)
                        .overlay(.white)
                    Text("Mecca - 7 Verses")
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
