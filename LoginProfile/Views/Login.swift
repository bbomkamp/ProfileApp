//
//  Login.swift
//  LoginProfile
//
//  Created by Brad Bomkamp on 9/5/21.
//

import SwiftUI

struct Login: View {
    
    @State var email: String =  ""
    @State var password: String =  ""
    @State var scale: CGFloat = 1
    @State var isVisible = false
    
    var body: some View {
        NavigationView{
            ZStack{
                LinearGradient.init(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: .topTrailing, endPoint: .bottomLeading)
                    .ignoresSafeArea(.all)
                
                
                VStack(alignment: .center, spacing: 30){
                
                    Image("ProfileAppLogo.png")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
//                        .opacity(isVisible ? 1 : 0)
//                        .scaleEffect(isVisible ? 1 : 0)
//                        .onAppear{
//                            withAnimation(.spring(response: 0.75, dampingFraction: 0.2, blendDuration: 0)){
//                                self.isVisible.toggle()
//                            }
//                        }
                    
                    
                    
                    Spacer()
                        .frame(height: 60)
                    VStack(alignment: .center, spacing: 10, content: {
                
                        TextField("Email", text: $email)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .padding()
                            .frame(maxWidth: 350)
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color.blue, lineWidth: 2)
                            )
                            .padding(.bottom, 20)
                        
                        SecureField("Password", text: $password)
                            .padding()
                            .frame(maxWidth: 350)
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color.blue, lineWidth: 2)
                            )
                            .padding(.bottom, 20)
                    })
                    
                    NavigationLink(destination: HomePage()) {
                        Text("Log In")
                            .fontWeight(.bold)
                            .frame(maxWidth: 260, maxHeight: 6)
                            .font(.title)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .padding(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.blue, lineWidth: 5)
                            )
                            .scaleEffect(scale)
//                            .onAppear {
//                                let baseAnimation = Animation.easeInOut(duration: 3)
//                                let repeated = baseAnimation.repeatForever(autoreverses: true)
//
//                                withAnimation(repeated) {
//                                    scale = 0.95
//                                }
//                            }
                    }.navigationBarTitle("")
                    .navigationBarHidden(true)
                    
                    Button(action:{print("Sign-Up Tapped")}){
                        Text("Sign-Up")
                            .padding()
                    }
                    
                }
            }
            
        }
    }
    
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
