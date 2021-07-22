//
//  LoginView.swift
//  TwitterSwiftUIClone (iOS)
//
//  Created by Luka Bozanovic on 18.07.21.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    @ObservedObject var viewModel = AuthViewModel()
    
    var body: some View {
        
        NavigationView {
            ZStack {
                VStack {
                    Image("TwitterLogo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 220, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .padding(.top, 88)
                        .padding(.bottom, 32)
                    
                    VStack (spacing: 20) {
                        CustomTextField(text: $email, placeholder: Text("E-mail"), imageName: "envelope")
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
                    
                    HStack {
                        
                        Spacer()
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Forgot password?")
                                .font(.footnote)
                                .bold()
                                .foregroundColor(.white)
                                .padding(.top, 16)
                                .padding(.trailing, 32)
                        })
                    }
                    
                    Button(action: {
                        viewModel.login(withEmail: email, password: password)
                    }, label: {
                            Text("Sign in")
                                .font(.headline)
                                .foregroundColor(.blue)
                                .frame(width: 360, height: 50)
                                .background(Color.white)
                                .clipShape(Capsule())
                                .padding()
                        })
                        
                    Spacer()
                    
                    NavigationLink (
                        destination: RegistrationView().navigationBarBackButtonHidden(true),
                        label: {
                            HStack {
                                Text("Don't have an account")
                                    .font(.system(size: 16))
                                Text("Sign up")
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
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
