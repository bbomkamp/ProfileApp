//
//  Login.swift
//  LoginProfile
//
//  Created by Brad Bomkamp on 9/5/21.
//

import SwiftUI

struct Login: View {
    
    @State var email: String = ""
    @State var password: String = ""
    @State var scale: CGFloat = 1
    @State var isVisible = false
    
    var body: some View {
        
        NavigationView{
            
            ZStack{
                
                // Background
                LinearGradient.init(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: .topTrailing, endPoint: .bottomLeading)
                    .ignoresSafeArea(.all)
                
                // Start of VStack
                VStack(alignment: .center, spacing: 30){
                    appLogo()
                    Spacer()
                        .frame(height: 60)
                    
                    // Text Fields
                    VStack(alignment: .center, spacing: 10, content: {
                        userNameInput()
                        passwordInput()
                    })
                    
                    // Buttons
                    loginButton()
                    
                    Button(action:{print("Sign-Up Tapped")}){
                        Text("Sign-Up")
                            .padding()
                    }
                }
            }
        }
    }
    
    // Functions
    fileprivate func appLogo() -> some View {
        return Image("ProfileAppLogo.png")
            .resizable()
            .aspectRatio(contentMode: .fit)
//            .opacity(isVisible ? 1 : 0)
//            .scaleEffect(isVisible ? 1 : 0)
//            .onAppear{
//                withAnimation(.spring(response: 0.75, dampingFraction: 0.2, blendDuration: 0)){
//                    self.isVisible.toggle()
//                }
//            }
    }
    fileprivate func userNameInput() -> some View {
        return TextField("Email", text: $email)
            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
            .padding()
            .frame(maxWidth: 350)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.blue, lineWidth: 2)
            )
            .padding(.bottom, 20)
    }
    
    fileprivate func passwordInput() -> some View {
        return SecureField("Password", text: $password)
            .padding()
            .frame(maxWidth: 350)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.blue, lineWidth: 2)
            )
            .padding(.bottom, 20)
    }
    
    fileprivate func loginButton() -> some View {
        return NavigationLink(destination: HomePage()) {
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
//                .onAppear {
//                    let baseAnimation = Animation.easeInOut(duration: 3)
//                    let repeated = baseAnimation.repeatForever(autoreverses: true)
//                    
//                    withAnimation(repeated) {
//                        scale = 0.95
//                    }
//                }
        }.navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
