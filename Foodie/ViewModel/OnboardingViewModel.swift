//
//  OnboardingViewModel.swift
//  Foodie
//
//  Created by Ha Duyen Quang Huy on 26/06/2023.
//

import Foundation

class OnboardingViewModel: ObservableObject {
    
    @Published var index: Int
    
    private var resources: [OnboardingModel] = [
        OnboardingModel(title: "Track your Comfort Food Here", subTitle: "Here You Can find a chef or dish for every taste and color. Enjoy!", image: "food-onboarding-1", backgroundImage: "bg-onboarding-1"),
        OnboardingModel(title: "Foodie is Where Your Comfort Food Resides", subTitle: "Enjoy a fast and smooth food delivery at your doorstep", image: "food-onboarding-2", backgroundImage: "bg-onboarding-2")
    ]
    
    init() {
        index = 0
    }
    
    var currentResource: OnboardingModel {
        
        return resources[index]
    }
    
    func onTouchNext() {
        
        index += 1
    }
    
    func canNext() -> Bool {
        return index < resources.count - 1
    }
}

struct OnboardingModel {
    
    var title: String
    var subTitle: String
    var image:String
    var backgroundImage: String
}
