//
//  SurahComponent.swift
//  quran-app
//
//  Created by magistra aptam on 16/11/23.
//

import SwiftUI

struct SurahComponent: View {
    @State var name = ""
    @State var number = 1
    @State var place = "Makkah"
    @State var verses = 7
    @State var nameInArab = "ةحتافلا"
    var body: some View {
        HStack{
            ZStack{
                Image("surah-number")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 36)
                Text("\(number)")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
            }
            VStack(alignment: .leading, spacing: 4){
                Text("\(name)")
                    .foregroundColor(.white)
                HStack {
                    Text(place)
                    Text("\(verses) Verses")

                }
                .foregroundColor(CustomColor.LigthPurple)
            }
            Spacer()
            Text(nameInArab)
                .fontWeight(.bold)
                .foregroundColor(CustomColor.BasicPurple)
        }
        .frame(width: 327)
    }
}

struct SurahComponent_Previews: PreviewProvider {
    static var previews: some View {
        SurahComponent()
    }
}
