//
//  RegistirationView.swift
//  TwitterClone
//
//  Created by Çare C. on 9.04.2023.
//

import SwiftUI

struct RegistirationView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var fullname = ""
    @State private var password = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            //header view
            AuthHeaderView(title1: "get_started", title2: "create_your_account")
            
            VStack (spacing:40) {
                CustomInputField(imageName: "envelope",
                                 placeHolderText: "email",
                                 text: $email)
                
                CustomInputField(imageName: "person",
                                 placeHolderText: "username",
                                 text: $username)
                
                CustomInputField(imageName: "person",
                                 placeHolderText: "fullname",
                                 text: $fullname)
                
                CustomInputField(imageName: "lock",
                                 placeHolderText: "password",
                                 text: $password)
                
            }
            .padding(32)
            
            Button {
                print("Sing up here")
            } label: {
                Text("sign_up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
            
            
            Spacer()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                HStack{
                    Text("already_have_an_account")
                        .font(.footnote)
                    Text("sign_in")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
            .padding(.bottom,32)

        }
        .ignoresSafeArea()
    }
}

struct RegistirationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistirationView()
    }
}
