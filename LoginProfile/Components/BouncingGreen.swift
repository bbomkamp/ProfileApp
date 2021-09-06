//
//  BouncingGreen.swift
//  LoginProfile
//
//  Created by Brad Bomkamp on 9/5/21.
//

import SwiftUI

struct BouncingGreen: View {
    
    var width: CGFloat
    var height: CGFloat
    
    @State var scale: CGFloat = 1
    
    
    var body: some View {
        Circle()
            .fill(RadialGradient(gradient: Gradient(colors: [Color.green, Color.blue]), center: .topLeading, startRadius: 0, endRadius: 280))
            .frame(width: width, height: height)
            .scaleEffect(scale)
            .onAppear {
                let baseAnimation = Animation.easeInOut(duration: 1)
                let repeated = baseAnimation.repeatForever(autoreverses: true)
                
                withAnimation(repeated) {
                    scale = 0.80
                }
            }
    }
}

struct BouncingGreen_Previews: PreviewProvider {
    static var previews: some View {
        BouncingGreen(width: 200, height: 200)
    }
}
