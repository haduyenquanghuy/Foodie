//
//  AuthView.swift
//  Foodie
//
//  Created by Ha Duyen Quang Huy on 26/06/2023.
//

import SwiftUI

struct AuthView: View {
    
    @ObservedObject var viewModel: AuthViewModel
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var name: String = ""
    
    var body: some View {
        
        ZStack {
            VStack(spacing: 0) {
                
                Text(viewModel.title)
                    .applyFont(with: .bold(size: 25))
                    .padding(.vertical, 30)
                
                FoodieTextField(text: $name, isPassword: false, placeholder: "Name", image: Image(systemName: "person.fill"))
                    .padding(.bottom, 20)
                    .applyFont(with: .regular(size: 12))
                
                if !viewModel.isLogin {
                    FoodieTextField(text: $name, isPassword: false, placeholder: "Email", image: Image(systemName: "envelope.fill"))
                        .padding(.bottom, 20)
                        .applyFont(with: .regular(size: 12))
                }
                
                FoodieTextField(text: $password, isPassword: true, placeholder: "Password", image: Image(systemName: "lock.fill"))
                    .padding(.bottom, viewModel.isLogin ? 10: 30)
                    .applyFont(with: .regular(size: 12))
                
                if viewModel.isLogin {
                    
                    HStack {
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }) {
                            Text("Forget Password?")
                                .applyFont(with: .regular(size: 12))
                                .foregroundColor(.black)
                        }
                    }
                    .padding(.bottom, 30)
                }
                
                PrimaryButton(title: viewModel.buttonTitle) {
                    print("Tap Login/Register")
                }
                .padding(.bottom, viewModel.isLogin ? 10 : 55)
                
                if viewModel.isLogin {
                
                Text("Or")
                    .applyFont(with: .regular(size: 12))
                    .foregroundColor(Color(fColor: .primary))
                    .padding(.bottom, 15)
                
                    HStack(spacing: 15) {
                        Spacer()
                        
                        Button(action: {
                            
                        }) {
                            Image("ic-gg")
                                .resizable()
                                .frame(width: 28, height: 28)
                            
                            Image("ic-fb")
                                .resizable()
                                .frame(width: 28, height: 28)
                            
                        }
                        
                        Spacer()
                    }
                    .padding(.bottom, 25)
                }

            }
            .padding(.horizontal, 23)
            .background(Color.white)
            .clipShape(
                RoundedRectangle(cornerRadius: 20)
            )
            .padding(.horizontal, 38)
            .addBackground()
            
            // BOTTOM
            
            VStack(spacing: 0) {
                    
                Spacer()
                
                Text(viewModel.changeStateButtonDescription)
                    .applyFont(with: .semibold(size: 14))
                    .padding(.bottom, 10)
                
                Button(action: {
                    
                    withAnimation(.easeInOut(duration: 0.35)) {
                        viewModel.changeState()
                    }
                }) {
                    Text(viewModel.changeStateButtonTitle.uppercased())
                        .applyFont(with: .semibold(size: 17))
                        .foregroundColor(Color(fColor: .primary))
                }
                .padding(.bottom, 4)
            }
        }
        // END: VSTACK
    }
    // END: ZSTACK
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView(viewModel: AuthViewModel(.login))
    }
}
