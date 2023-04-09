//
//  LoginView.swift
//  TwitterClone
//
//  Created by Çare C. on 9.04.2023.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        // parent container
        VStack {
            //header view
            AuthHeaderView(title1: "hello", title2: "welcome_back")
            
            VStack (spacing: 40) {
                CustomInputField(imageName: "envelope",
                                 placeHolderText: "email",
                                 text: $email)
                
                CustomInputField(imageName: "lock",
                                 placeHolderText: "password",
                                 text: $password)
            }
            .padding(.horizontal, 32)
            .padding(.top, 44)
            
            HStack {
                Spacer()
                NavigationLink {
                    Text("Reset password View..")
                } label: {
                    Text("forgot_password")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemBlue))
                        .padding(.top)
                        .padding(.trailing)
                }
            }
            
            Button {
                print("Sing in here")
            } label: {
                Text("sign_in")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
            
            Spacer()
            
            NavigationLink {
                RegistirationView()
                    .navigationBarHidden(true)
            } label: {
                HStack{
                    Text("dont_have_an_account")
                        .font(.footnote)
                    Text("sign_up")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
            .padding(.bottom,32)
            .foregroundColor(Color(.systemBlue))

        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
