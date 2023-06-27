//
//  FoodieTextField.swift
//  Foodie
//
//  Created by Ha Duyen Quang Huy on 27/06/2023.
//

import SwiftUI

struct FoodieTextField: View {
    
    @State var isEmpty: Bool = true
    @Binding var text: String
    
    var isPassword: Bool
    var placeholder: String
    var image: Image
    
    var body: some View {
        HStack(spacing: 0) {
            image
                .frame(width: 19, height: 19)
                .padding(.horizontal, 15)
                .padding(.vertical, 13)
            
            ZStack {
                if isEmpty {
                    HStack {
                        Text(placeholder)
                            .applyFont(with: .regular(size: 12))
                        
                        Spacer()
                    }
                }
                
                if isPassword {
                    SecureInputView("", text: $text)
                    
                } else {
                    TextField("", text: $text)
                }
            }
        }
        .onChange(of: text, perform: {
            isEmpty = $0.isEmpty
        })
        .background(
            RoundedRectangle(cornerRadius: 5)
                .fill(isEmpty ? Color(fColor: .lightBackground) : Color.white)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color(fColor: .lightBackground), lineWidth: 1)
        )
    }
}

struct FoodieTextField_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack {
            Color.white
            
            FoodieTextField(text: .constant(""), isPassword: true, placeholder: "example@gmail.com", image: Image(systemName: "person.fill"))
                .padding(.horizontal)
        }
    }
}

struct SecureInputView: View {
    
    @Binding private var text: String
    @State private var isSecured: Bool = true
    private var title: String
    
    init(_ title: String, text: Binding<String>) {
        self.title = title
        self._text = text
    }
    
    var body: some View {
        ZStack(alignment: .trailing) {
            Group {
                if isSecured {
                    SecureField(title, text: $text)
                } else {
                    TextField(title, text: $text)
                }
            }.padding(.trailing, 32)
            
            Button(action: {
                isSecured.toggle()
            }) {
                Image(systemName: self.isSecured ? "eye.fill" : "eye")
                    .accentColor(.black)
                    .padding(.trailing, 8)
            }
        }
    }
}
