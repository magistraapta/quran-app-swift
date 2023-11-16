//
//  DetailSurahView.swift
//  quran-app
//
//  Created by magistra aptam on 16/11/23.
//

import SwiftUI

struct DetailSurahView: View {
    let ayahs = [
        Ayahs(number: 1),
        Ayahs(number: 2),
        Ayahs(number: 3)
    ]
    var body: some View {
        VStack{
            ScrollView{
                VStack(spacing:32){
                    SurahBanner()
                    
                    ForEach(ayahs, id:\.self){item in
                        
                        AyahsComponent(number: "\(item.number)")

                    }
                }
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(CustomColor.DarkPurple)
    }
}

struct Ayahs:Hashable{
    var number: Int
}


struct DetailSurahView_Previews: PreviewProvider {
    static var previews: some View {
        DetailSurahView()
    }
}
