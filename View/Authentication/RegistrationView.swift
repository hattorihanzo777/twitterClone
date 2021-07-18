//
//  RegistrationView.swift
//  TwitterSwiftUIClone (iOS)
//
//  Created by Luka Bozanovic on 18.07.21.
//

import SwiftUI

struct RegistrationView: View {
    
    @State var email = ""
    @State var password = ""
    @State var fullName = ""
    @State var username = ""
    @State var showImagePicker = false
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
            VStack {
                
                Button(action: {showImagePicker.toggle()}, label: {
                    Image("plus_photo")
                        .resizable()
                        .renderingMode(.template)
                        .scaledToFill()
                        .frame(width: 140, height: 140)
                        .padding(.top, 88)
                        .padding(.bottom, 16)
                        .foregroundColor(.white)
                })
                .sheet(isPresented: $showImagePicker, content: {
                    Text("image picker")
                })
                
                VStack (spacing: 20) {
                    CustomTextField(text: $email, placeholder: Text("E-mail"), imageName: "envelope")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                    
                    CustomTextField(text: $fullName, placeholder: Text("Full name"), imageName: "person")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                    
                    CustomTextField(text: $username, placeholder: Text("Username"), imageName: "person")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                    
                    CustomSecureField(text: $password, placeholder: Text("Password"))
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                }
                .padding(.horizontal, 32)
                
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Sign up")
                            .font(.headline)
                            .foregroundColor(.blue)
                            .frame(width: 360, height: 50)
                            .background(Color.white)
                            .clipShape(Capsule())
                            .padding()
                    })
                    
                Spacer()
                
                Button(action: {mode.wrappedValue.dismiss()}, label: {
                    HStack {
                        Text("Already have an account")
                            .font(.system(size: 16))
                        Text("Sign in")
                            .font(.system(size: 16, weight: .semibold))
                    }
                    .foregroundColor(.white)
                    .padding(40)
                })
                
            }
        }
        .background(Color(#colorLiteral(red: 0.1155984178, green: 0.6330730319, blue: 0.9510951638, alpha: 1)))
        .ignoresSafeArea()
    }
}


struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}