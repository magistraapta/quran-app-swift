//
//  SurahModel.swift
//  quran-app
//
//  Created by magistra aptam on 16/11/23.
//

import Foundation
struct DataSurah: Decodable{
    var number: Int
    var name: String
    var englishName:String
    var englishNameTranslation: String
    var revelationType: String
    struct Ayahs:Decodable{
        var number: Int
        var text: String
        var numberInSurah: Int
        var juz: Int
        var manzil: Int
        var page: Int
        var ruku: Int
        var hizbQuarter: Int
        var sajda: Bool
    }
}



