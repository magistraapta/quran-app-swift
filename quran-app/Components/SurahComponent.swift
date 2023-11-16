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
                Text("Meccan - 7 Verses")
                    .foregroundColor(CustomColor.LigthPurple)
            }
            Spacer()
            Text("ةحتافلا")
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
