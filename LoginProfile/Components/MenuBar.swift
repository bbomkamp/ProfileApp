//
//  MenuBar.swift
//  LoginProfile
//
//  Created by Brad Bomkamp on 9/5/21.
//

import SwiftUI

struct MenuBar: View {
    var body: some View {
        HStack{
            VStack{
                Button(action:{print("Sign-Up Tapped")}){
                    Image(systemName: "envelope").font(.system(size: 30))
                }
                Text("Mail").font(.caption2).foregroundColor(.white)
            }.padding()
            VStack{
                Button(action:{print("Sign-Up Tapped")}){
                    Image(systemName: "person.3").font(.system(size: 30))
                }
                Text("Friends").font(.caption2).foregroundColor(.white)
            }.padding()
            VStack{
                Button(action:{print("Sign-Up Tapped")}){
                    Image(systemName: "photo").font(.system(size: 30))
                }
                Text("Photos").font(.caption2).foregroundColor(.white)
            }.padding()
            VStack{
                Button(action:{print("Sign-Up Tapped")}){
                    Image(systemName: "gear").font(.system(size: 30))
                }
                Text("Photos").font(.caption2).foregroundColor(.white)
            }.padding()
        }.overlay(
            RoundedRectangle(cornerRadius: 25)
                .stroke(Color.blue, lineWidth: 2)
        )
        
    }
    }


struct MenuBar_Previews: PreviewProvider {
    static var previews: some View {
        MenuBar()
    }
}
