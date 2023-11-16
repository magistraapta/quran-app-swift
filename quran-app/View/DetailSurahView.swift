//
//  DetailSurahView.swift
//  quran-app
//
//  Created by magistra aptam on 16/11/23.
//

import SwiftUI

struct DetailSurahView: View {
    var body: some View {
        VStack{
        
            SurahBanner()
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(CustomColor.DarkPurple)
    }
}


struct DetailSurahView_Previews: PreviewProvider {
    static var previews: some View {
        DetailSurahView()
    }
}
