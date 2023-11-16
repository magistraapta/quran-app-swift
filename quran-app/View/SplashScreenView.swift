//
//  SplashScreenView.swift
//  quran-app
//
//  Created by magistra aptam on 16/11/23.
//

import SwiftUI

struct SplashScreenView: View {
    
    var body: some View {
        NavigationStack {
            VStack{
                Spacer()
                VStack(spacing:16){
                    Text("Quran App")
                        .fontWeight(.heavy)
                        .font(.system(size: 28))
                    Text("Learning Qur'an and Recite once everyday")
                        .fontWeight(.semibold)
                        .font(.system(size: 18))
                        .multilineTextAlignment(.center)
                        .foregroundColor(CustomColor.LigthPurple)
                }
                .foregroundColor(.white)
                .frame(maxWidth: 195)
                Spacer()
                Image("SplashScreenImage")
                Spacer()
                NavigationLink {
                    HomeView()
                } label: {
                    Text("Get Started")
                        .fontWeight(.bold)
                        .font(.system(size: 18))
                        .foregroundColor(CustomColor.DarkPurple)
                        .frame(width: 185)
                        .padding()
                        .background(CustomColor.LigthOrange)
                        .cornerRadius(30)
                }
                
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(CustomColor.DarkPurple)

        }
        
    }
}

struct CustomColor{
    static let DarkPurple = Color("DarkPurple")
    static let LigthPurple = Color("LightPurple")
    static let LigthOrange = Color("LightOrange")
    static let BasicPurple = Color("BasicPurple")
    static let MediumPurple = Color("MediumPurple")
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
