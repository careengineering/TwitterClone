//
//  AuthenticationHeaderView.swift
//  TwitterClone
//
//  Created by Çare C. on 9.04.2023.
//

import SwiftUI
import Localize_Swift

struct AuthHeaderView: View {
    let title1: String
    let title2: String
    
    var body: some View {
        VStack (alignment: .leading){
            HStack { Spacer() }
            Text(title1.localized())
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text(title2.localized())
                .font(.largeTitle)
                .fontWeight(.semibold)
        }
        .frame(height: 260)
        .padding(.leading)
        .background(Color(.systemBlue))
        .foregroundColor(.white)
        .clipShape(RoundedShape(corners: [.bottomRight]))
    }
}

struct AuthHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        AuthHeaderView(title1: "hello", title2: "welcome_back")
    }
}
