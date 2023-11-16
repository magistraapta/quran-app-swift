//
//  HomeView.swift
//  quran-app
//
//  Created by magistra aptam on 16/11/23.
//

import SwiftUI

struct Surah: Hashable{
    var number: Int
    var title: String
}
struct HomeView: View {
    var dataSurah = [Surah(number: 1, title: "Al-Fatiha"), Surah(number: 2, title: "Al-Baqara"), Surah(number: 3, title: "Al-Ikhlas")]
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing:24){
                VStack(alignment: .leading, spacing: 24){
                    Header()
                    Content()
                }
                
                ForEach(dataSurah, id:\.self){ surah in
                    NavigationLink {
                        DetailSurahView()
                    } label: {
                        SurahComponent(name: surah.title, number: surah.number)
                    }

                    
                }
                Spacer()
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
            Spacer()
            Image(systemName: "magnifyingglass")
                .foregroundColor(CustomColor.LigthPurple)
                .font(.system(size: 24))
        }
        .frame(width: 327)
        .foregroundColor(.white)
    }
}

private struct Content: View{
    var body: some View{
        VStack(alignment: .leading, spacing: 4){
            Text("Assalamualaikum")
                .foregroundColor(CustomColor.LigthPurple)
            Text("Tanvir Ahassan")
                .fontWeight(.bold)
                .font(.system(size: 18))
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
