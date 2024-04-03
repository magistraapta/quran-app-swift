//
//  SurahModel.swift
//  quran-app
//
//  Created by magistra aptam on 16/11/23.
//

import Foundation
struct SurahModel: Codable, Identifiable {
    let id = UUID()
    let nomor: Int
    let nama, namaLatin: String
    let jumlahAyat: Int
    let tempatTurun, deskripsi: String
    let audio: String

    enum CodingKeys: String, CodingKey {
        case nomor, nama
        case namaLatin = "nama_latin"
        case jumlahAyat = "jumlah_ayat"
        case tempatTurun = "tempat_turun"
        case deskripsi, audio
    }
}


