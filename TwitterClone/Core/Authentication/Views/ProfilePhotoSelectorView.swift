//
//  ProfilePhotoSelectorView.swift
//  TwitterClone
//
//  Created by Çare C. on 11.04.2023.
//

import SwiftUI

struct ProfilePhotoSelectorView: View {
    var body: some View {
        VStack {
            AuthHeaderView(title1: "create_your_account",
                           title2: "add_profile_photo")
            
            Button {
                print("Pick image here...")
            } label: {

            }

            
            Spacer()
        }
        .ignoresSafeArea()
    }
}

struct ProfilePhotoSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoSelectorView()
    }
}
