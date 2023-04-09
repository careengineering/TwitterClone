//
//  NewTweetView.swift
//  TwitterClone
//
//  Created by Çare C. on 7.04.2023.
//

import SwiftUI

struct NewTweetView: View {
    @State private var caption = ""
    @Environment(\.presentationMode) var presantationMode
    var body: some View {
        VStack {
            HStack {
                Button {
                    presantationMode.wrappedValue.dismiss()
                } label: {
                    Text("cancel")
                        .foregroundColor(Color(.systemBlue))
                }
                
                Spacer()

                Button {
                    print("tweet")
                } label: {
                    Text("tweet")
                        .bold()
                        .padding(.horizontal)
                        .padding(.vertical,8)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                }
            }
            .padding()
            
            HStack (alignment: .top) {
                Circle()
                    .frame(width: 64, height: 64)
                
                TextField("Whats happening?", text: $caption)
            }
            .padding()
            
            Spacer()
        }
    }
}

struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView()
    }
}
