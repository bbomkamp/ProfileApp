//
//  HomePage.swift
//  LoginProfile
//
//  Created by Brad Bomkamp on 9/5/21.
//

import SwiftUI

struct HomePage: View {
    @State private var degrees = 0.0
    @State var changeProfileImage = false
        @State var openCameraRoll = false
        @State var imageSelected = UIImage()
    
    
    var body: some View {
        ZStack{
            LinearGradient.init(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: .topTrailing, endPoint: .bottomLeading)
                .ignoresSafeArea(.all)
        VStack{
            ZStack(alignment: .bottomTrailing){
            
            Button(action: {
                            changeProfileImage = true
                            openCameraRoll = true
                            
                        },label: {
                            if changeProfileImage {
                                Image(uiImage: imageSelected)
                                    .profileImageMod()
                            } else {
                                Image("DefaultProfilePic")
                                    .profileImageMod()
                                    .rotation3DEffect(.degrees(degrees), axis: (x: 1, y: 1, z: 1))
                                    .onAppear(){ withAnimation {
                                        self.degrees += 1440
                                    }
                                    }
                            }
                        })
            
                            Image(systemName: "plus")
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                            .background(Color.gray)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            
            }
            Bio()
            
            MenuBar()

            ScrollView {
                List {
                    //Text("Feed Item")
                }
            }.overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.blue, lineWidth: 2)
            ).padding()
            
            Spacer()
        }
    }
}
}
struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
