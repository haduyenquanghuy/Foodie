//
//  Country.swift
//  Foodie
//
//  Created by Ha Duyen Quang Huy on 28/06/2023.
//

import Foundation

struct Country: Decodable, Identifiable {
    
    var id: String {
        get {
            return code ?? UUID().uuidString
        }
    }
    
    var name: String?
    var code: String?
}

