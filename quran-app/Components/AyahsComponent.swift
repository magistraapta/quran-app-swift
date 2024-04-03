//
//  AyahsComponent.swift
//  quran-app
//
//  Created by magistra aptam on 16/11/23.
//

import SwiftUI

struct AyahsComponent: View {
    @State var number = "1"
    @State var surah = "بِسْمِ اللّٰهِ الرَّحْمٰنِ الرَّحِيْمِ"
    @State var surahInIndo = "Dengan nama Allah Yang Maha Pengasih, Maha Penyayang."
    var body: some View {
        VStack(spacing:24){
            HStack{
                ZStack{
                    Circle()
                        .frame(width: 27)
                        .foregroundColor(CustomColor.BasicPurple)
                    Text("\(number)")
                        .fontWeight(.bold)
                }
                Spacer()
                Image(systemName: "bookmark")
            }
            .padding(.vertical,10)
            .padding(.horizontal,13)
            .background(CustomColor.MediumPurple)
            .foregroundColor(.white)
            .cornerRadius(10)
            
            VStack(alignment:.trailing, spacing: 16){
                Text(surah)
                    .foregroundColor(CustomColor.BasicPurple)
                    .bold()
                Text(surahInIndo)
                    .foregroundColor(.white)
            }
        }
        .frame(width: 327)
    }
}

struct AyahsComponent_Previews: PreviewProvider {
    static var previews: some View {
        AyahsComponent()
    }
}
