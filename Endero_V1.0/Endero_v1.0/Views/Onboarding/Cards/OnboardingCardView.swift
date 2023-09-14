//
//  OnboardingCardView.swift
//  Endero_v1.0
//
//  Created by Jesse Rae on 9/12/23.
//

import SwiftUI

struct OnboardingCardView: View {
    //MARK: - PROPERTIES
    
    var onboarding: Onboarding
    @State private var isAnimating: Bool = false
    
    //MARK: - BODY
    
    var body: some View {
        ZStack {
            VStack {
                
                //ONBOARDING: BODY
                Text(onboarding.body)
                    .foregroundColor(Color.black)
                    .font(.system(size: 32))
                    .multilineTextAlignment(.center)
                    .fontWeight(.bold)
                    .padding(.horizontal, 16)
                    .frame(maxWidth:480)
            } //VStack
        } //ZStack
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(Image(onboarding.background))
              .cornerRadius(26)
              .padding(.horizontal, 24)
              .padding(.top, 120)
              .padding(.bottom, 70)
    } //END BODY
}

struct OnboardingCardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingCardView(onboarding: OnboardingData[0])
    }
}
