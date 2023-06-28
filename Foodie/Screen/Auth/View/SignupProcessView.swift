//
//  SignupProcessView.swift
//  Foodie
//
//  Created by Ha Duyen Quang Huy on 28/06/2023.
//

import SwiftUI

struct SignupProcessView: View {
    
    @State private var isShowCountries: Bool = false
    @State private var fullname: String = ""
    @State private var phoneNumber: String = ""
    @State private var selectedCountry: Country?
    
    @ObservedObject var viewModel: SignupProcessViewModel
    
    var body: some View {
        
        VStack(spacing: 30) {
            
            Text("Fill in your bio to get started")
                .applyFont(with: .bold(size: 30))
                .lineLimit(nil)
                .multilineTextAlignment(.center)
            
            Text("This data will be displayed in your account profile for security")
                .applyFont(with: .semibold(size: 14))
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .foregroundColor(Color(fColor: .textLight))
                .padding(.horizontal, 40)
                .padding(.bottom, 20)
            
            FoodieTextField(text: $fullname, isPassword: false, placeholder: "Full Name", image: Image(systemName: "person.fill"))
            
            DisclosureGroup(isExpanded: $isShowCountries, content: {
                
                ScrollView {
                    
                    VStack(alignment: .leading, spacing: 0) {
                        ForEach(viewModel.countries) { _country in
                            Text(_country.name ?? "")
                                .applyFont(with: .regular(size: 12))
                                .onTapGesture {
                                    isShowCountries = false
                                    selectedCountry = _country
                                }
                                .padding(.vertical, 5)
                        }
                    }
                }
                .frame(maxHeight: UIScreen.height(percent: 0.5))
                
            }) {
                
                HStack(spacing: 15) {
                    Image("ic-global")
                    
                    Text(selectedCountry?.name ?? "Country")
                        .applyFont(with: .regular(size: 12))
                        .padding(.vertical, 12)
                }
            }
            .padding(.horizontal, 15)
            .cornerRadius(5)
            .accentColor(.black)
            .background(
                RoundedRectangle(cornerRadius: 5)
                    .fill(selectedCountry == nil || isShowCountries ? Color(fColor: .lightBackground) : Color.white)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color(fColor: .lightBackground), lineWidth: 1)
            )
            
            FoodieTextField(text: $phoneNumber, isPassword: false, placeholder: "Mobile Number", image: Image(systemName: "phone.fill"))
            
            Spacer()
            
            PrimaryButton(title: "Next") {
                
            }
        }
        .padding(.horizontal, 30)
        .padding(.top, 50)
        // END: VSTACK
    }
}

struct SignupProcessView_Previews: PreviewProvider {
    static var previews: some View {
        SignupProcessView(viewModel: SignupProcessViewModel())
    }
}
