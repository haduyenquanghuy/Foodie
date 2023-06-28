//
//  SignupProcessViewModel.swift
//  Foodie
//
//  Created by Ha Duyen Quang Huy on 28/06/2023.
//

import Foundation

class SignupProcessViewModel: ObservableObject {
    
    @Published var countries: [Country] = []
    
    init() {
        fetchCountries()
    }
    
    private func fetchCountries() {
        
        countries = FJSONParser.shared.loadJson(filename: "countries") ?? []
    }
}
