//
//  FJSONParser.swift
//  Foodie
//
//  Created by Ha Duyen Quang Huy on 28/06/2023.
//

import Foundation

struct FJSONParser {
    
    static let shared = FJSONParser()
    
    private init() {
        
    }
    
    private func parserModel<T>(with data: Data) -> T? where T: Decodable {
        
        do {
            
            return try JSONDecoder().decode(T.self, from: data)
            
        } catch let err as NSError {
            
            print(err.description)
            
            return nil
        }
    }
    
    func loadJson<T>(filename: String, extension: String = "json") -> T? where T: Decodable {
        
        guard let url = Bundle.main.url(forResource: filename, withExtension: `extension`),
              let data = try? Data(contentsOf: url)
        else { return nil }
        
        return parserModel(with: data) as T?
    }
}
