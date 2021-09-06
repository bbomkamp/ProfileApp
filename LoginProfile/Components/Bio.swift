//
//  Bio.swift
//  LoginProfile
//
//  Created by Brad Bomkamp on 9/5/21.
//

import SwiftUI

struct Bio: View {
    var body: some View {
        VStack{
            Text("Brad").font(.largeTitle)
            Text("Age: 37")
            Text("Location: Racine, Wi")
            Text("Student")
            
        }
    }
}

struct Bio_Previews: PreviewProvider {
    static var previews: some View {
        Bio()
    }
}
