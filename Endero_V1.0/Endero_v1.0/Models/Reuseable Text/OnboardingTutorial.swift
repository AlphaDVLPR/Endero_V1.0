//
//  OnboardingTutorial.swift
//  Endero_v1.0
//
//  Created by Jesse Rae on 9/11/23.
//

/*
 In this onboarding file, text for the viewModel files are located here. As the app grows we can add onto this file and make changes to the UI with ease. 
 */
import Foundation

struct OnboardingTutorial {
    
    //Onboarding Explanation Screens
    static let welcomeTitle = "Welcome"
    static let skipTitle = "Skip"
    static let onboardingTutorialBody = [1 : "Here you'll recieve and give advice anonymously over call or text.",
                                         2 : "You also get to rate the quality of the advice received and given.",
                                         3 : "If you're giving someone advice and you get too many low ratings.",
                                         4 : "You may face temporary suspension on the app",
                                         5 : "Get out there! Give the best advice you can! Support and uplift those around you!"]
    
    //Transitional Screen
    static let transitionalTitle = "Are you ready?"
    static let transitionalBody = "Yes I'm Ready!"
}
