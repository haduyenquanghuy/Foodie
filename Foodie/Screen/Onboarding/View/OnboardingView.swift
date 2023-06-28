//
//  OnboardingView.swift
//  Foodie
//
//  Created by Ha Duyen Quang Huy on 26/06/2023.
//

import SwiftUI

struct OnboardingView: View {
    
    @ObservedObject var viewModel = OnboardingViewModel()
    
    @State var nextToAuthView: Bool = false
    
    var body: some View {
        
        NavigationStack {
            
            VStack(spacing: 0) {
                ZStack {
                    Image(viewModel.currentResource.backgroundImage)
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.screenWidth, height: UIScreen.screenWidth)
                    
                    Image(viewModel.currentResource.image)
                }
                .padding(.top, 10)
                // END: ZSTACK
                
                Spacer()
                
                VStack (spacing: 15) {
                    Text(viewModel.currentResource.title)
                        .applyFont(with: .bold(size: 25))
                        .lineLimit(2)
                        .multilineTextAlignment(.center)
                    
                    Text(viewModel.currentResource.subTitle)
                        .applyFont(with: .regular(size: 12))
                        .lineLimit(2)
                        .multilineTextAlignment(.center)
                        .foodieForegroundColor(with: .textLight)
                        
                }
                .padding(.horizontal, 60)
                .padding(.bottom, 70)
                // END: VSTACK
                
                Button(action: {
                    if viewModel.canNext() {
                        viewModel.onTouchNext()
                    } else {
                        nextToAuthView = true
                    }
                }) {
                    Text("Next")
                        .padding(.horizontal, 59)
                        .padding(.vertical, 14)
                        .foregroundColor(.white)
                        .applyFont(with: .semibold(size: 17))
                }
                .background(Color(hex: "#EC2578"))
                .padding(.bottom, 16)
            }
            .navigationDestination(isPresented: $nextToAuthView) {
                AuthView(viewModel: AuthViewModel(.login))
            }
            // END: VSTACK
        }
       
        // END: NAVIGATION VIEW
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
