//
//  ShimmerLogin.swift
//  LoginProfile
//
//  Created by Brad Bomkamp on 9/5/21.
//

import SwiftUI


struct ShimmerLogin: View {
    
    var text: String
    @State var animation = false
    
    @State var multiColor = false
    var body: some View {
                        
// MultiColor Text....
                   
                   HStack(spacing: 0){
                       
                       ForEach(0..<text.count,id: \.self){index in
                           
                           Text(String(text[text.index(text.startIndex, offsetBy: index)]))
                               .font(.system(size: 75, weight: .bold))
                            .foregroundColor(.white)
                       }
                   }
                   // Masking For Shimmer Effect...
                   .mask(
                   
                       Rectangle()
                           // For Some More Nice Effect Were Going to use Gradient...
                           .fill(
                           
                               // You can use any Color Here...
                               LinearGradient(gradient: .init(colors: [Color.white.opacity(0.5),Color.white,Color.white.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
                           )
                           .rotationEffect(.init(degrees: 90))
                           .padding(-40)
                       // Moving View Continously...
                       // so it will create Shimmer Effect...
                           .offset(x: -250)
                           .offset(x: animation ? 500 : 0)
                   )
                   .onAppear(perform: {
                   
                       withAnimation(Animation.linear(duration: 3).repeatForever(autoreverses: false)){
                           
                           animation.toggle()
                       }
                   })
               }
           }
           
           // Random Color....
           
           // It's Your Wish yOu can change anything here...
           // or you can also use Array of colors to pick random One....
           
           func randomColor()->Color{
               
            let color = UIColor(red:0.2, green: .random(in: 0...1), blue: 0.8, alpha: 1)
               
               return Color(color)
           }
       

    
struct ShimmerLogin_Previews: PreviewProvider {
    static var previews: some View {
        ShimmerLogin(text: "Sample")
}

}

