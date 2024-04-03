//
//  File.swift
//  quran-app
//
//  Created by Magistra Apta on 03/04/24.
//

import Foundation

class SurahViewModel: ObservableObject {
    @Published var surah: [SurahModel] = []
    @Published var detailSurah: [Ayat] = []
    
    @MainActor
    func getSurah() async throws{
        guard let url = URL(string: "https://quran-api.santrikoding.com/api/surah") else { throw URLError(.badURL)}
        
        let urlRequest = URLRequest(url: url)
        
        let (data,response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {
            throw URLError(.badServerResponse)
        }
        
        let decoder = JSONDecoder()
        let decodedData = try decoder.decode([SurahModel].self, from: data)
        self.surah = decodedData
    }
    
    func getDetailSurah(number: Int) async throws {
        guard let url = URL(string: "https://quran-api.santrikoding.com/api/surah/\(number)") else { throw URLError(.badURL)}
        
        let urlRequest = URLRequest(url: url)
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {
            throw URLError(.badServerResponse)
        }
        
        let decoder = JSONDecoder()
        let decodedData = try decoder.decode(SurahDetaiModel.self, from: data)
        self.detailSurah = decodedData.ayat
    }
}
