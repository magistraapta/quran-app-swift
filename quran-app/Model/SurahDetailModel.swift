//
//  SurahDetailModel.swift
//  quran-app
//
//  Created by Magistra Apta on 03/04/24.
//

import Foundation

struct SurahDetaiModel: Codable {
    let status: Bool
    let nomor: Int
    let nama, namaLatin: String
    let jumlahAyat: Int
    let tempatTurun, arti, deskripsi: String
    let audio: String
    let ayat: [Ayat]

    enum CodingKeys: String, CodingKey {
        case status, nomor, nama
        case namaLatin = "nama_latin"
        case jumlahAyat = "jumlah_ayat"
        case tempatTurun = "tempat_turun"
        case arti, deskripsi, audio, ayat
    }
}

// MARK: - Ayat
struct Ayat: Codable, Identifiable {
    let id, surah, nomor: Int
    let ar, tr, idn: String
}
