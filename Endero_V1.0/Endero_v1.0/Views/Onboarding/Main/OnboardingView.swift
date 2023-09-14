//
//  OnboardingView.swift
//  Endero_v1.0
//
//  Created by Jesse Rae on 9/11/23.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: - PROPERTIES
    var onboardings: [Onboarding] = OnboardingData
    @State private var isAnimating: Bool = false
    @State private var showSplash = true
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            if showSplash {
                SplashView()
                    .transition(.opacity)
                    .animation(.easeOut(duration: 1.5))
            } else {
                GeometryReader { geometry in
                    ZStack {
                        Image("Endero Background-Light Mode").resizable().aspectRatio(geometry.size, contentMode: .fill).edgesIgnoringSafeArea(.all)
                    }
                    Text("Welcome")
                        .font(.system(size: 48, weight: .heavy))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(.top, 23)
                        .foregroundColor(.black)
                    
                    TabView {
                        ForEach(onboardings[0...4]) { item in
                            OnboardingCardView(onboarding: item)
                        }
                    }
                    .tabViewStyle(PageTabViewStyle())
                }
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3)
            {
                withAnimation {
                    self.showSplash = false
                }
            }
        }
    } // End Body
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
