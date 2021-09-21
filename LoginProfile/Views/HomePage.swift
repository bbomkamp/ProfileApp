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
    
    @State var isShowingImagePicker = false
    

    
    var body: some View {
        
        // Background
        ZStack{
            LinearGradient.init(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: .topTrailing, endPoint: .bottomLeading)
                .ignoresSafeArea(.all)
            
            // Start of VStack
            VStack(){
                
                // ZStack with alignment that allows for the "Plus" to be in the corner of Profile Picture.
                ZStack(alignment: .bottomTrailing){
                    
                    Button(action: {
                        self.isShowingImagePicker.toggle()
                    },label: {
                        if changeProfileImage {
                            Image(uiImage: imageSelected)
                                .profileImageMod()
                        } else {
                            defaultProfilePic()}})
                    .sheet(isPresented: $isShowingImagePicker, content: {
                        ImagePickerView()
                    })
                    
                    plusImage()}
                
                Bio()
                MenuBar()
                
                // Scroll View
                ScrollView {
                    List {
                        //Text("Feed Items?")
                    }
                }.overlay(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color.blue, lineWidth: 2)
                ).padding()
            }
        }
    }
    
    
    
    // Functions
    fileprivate func plusImage() -> some View {
        return Image(systemName: "plus")
            .frame(width: 30, height: 30)
            .foregroundColor(.white)
            .background(Color.green)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
    }
    
    fileprivate func defaultProfilePic() -> some View {
        return Image("DefaultProfilePic")
            .profileImageMod()
            .rotation3DEffect(.degrees(degrees), axis: (x: 1, y: 1, z: 1))
            .onAppear(){ withAnimation {
                self.degrees += 1440}}
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}

struct ImagePickerView: UIViewControllerRepresentable{
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
      
    }
    
  
    func makeCoordinator() -> ImagePickerView.Coordinator {
              return Coordinator()
          }

    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePickerView>) -> UIViewController {
        let controller = UIImagePickerController()
        controller.delegate = context.coordinator
        return controller
    }
    
   

    
    
    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
           
            }
        }
    }
    
    
    func updateUIViewController(_ uiViewController: ImagePickerView.UIViewControllerType, context: UIViewControllerRepresentableContext<ImagePickerView>) {
        
    }

