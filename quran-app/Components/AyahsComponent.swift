//
//  AyahsComponent.swift
//  quran-app
//
//  Created by magistra aptam on 16/11/23.
//

import SwiftUI

struct AyahsComponent: View {
    @State var number = "1"
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
                Text("َﻦﻳِمَلٰعْلا ِّبَر ِهَّلِل ُدْمَحْلا")
                    .foregroundColor(CustomColor.BasicPurple)
                    .bold()
                Text("[All] praise is [due] to Allah, Lord of the worlds -")
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
