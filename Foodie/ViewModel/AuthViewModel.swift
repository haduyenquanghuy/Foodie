//
//  AuthViewModel.swift
//  Foodie
//
//  Created by Ha Duyen Quang Huy on 27/06/2023.
//

import Foundation

class AuthViewModel: ObservableObject {
    
    enum State {
        
        case login
        case register
    }
    
    @Published var state: State
    
    init(_ state: State) {
        self.state = state
    }
    
    func changeState() {
        
        state = isLogin ? .register : .login
    }
    
    var isLogin: Bool {
        
        return state == .login
    }
    
    var title: String {
        
        switch state {
            
            case .login:
                return "Login"
            case .register:
                return "Signup"
        }
    }
    
    var buttonTitle: String {
        
        switch state {
                
            case .login:
                return "Login"
            case .register:
                return "Create Account"
        }
    }
    
    var changeStateButtonTitle: String {
        
        switch state {
                
            case .login:
                return "Register"
            case .register:
                return "Signup"
        }
    }
    
    var changeStateButtonDescription: String {
        
        switch state {
                
            case .login:
                return "Don't have an account?"
            case .register:
                return "Already have an account?"
        }
    }
}
