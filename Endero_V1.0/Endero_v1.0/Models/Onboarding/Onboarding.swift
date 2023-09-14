//
//  OnboardingTutorial.swift
//  Endero_v1.0
//
//  Created by Jesse Rae on 9/12/23.
//

import Foundation
import SwiftUI

//MARK: - Onboarding Screen Data Model

struct Onboarding: Identifiable {
    
    var id = UUID()
    var body: String
    var background: String
}
