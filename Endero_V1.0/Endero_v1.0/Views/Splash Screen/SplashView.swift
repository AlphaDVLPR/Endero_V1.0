//
//  SplashView.swift
//  Endero_v1.0
//
//  Created by Jesse Rae on 9/13/23.
//

import SwiftUI

struct SplashView: View {
    
    //BODY
    var body: some View {
        
        GeometryReader { geometry in
            ZStack {
                Image("Endero Background-Light Mode")
                    .resizable()
                    .aspectRatio(geometry.size, contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                Image("Enduro")
                    .resizable()
                    .scaledToFit()
                    .padding(50)
            }
        }// END ZSTACK
    }
}// END BODY

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
