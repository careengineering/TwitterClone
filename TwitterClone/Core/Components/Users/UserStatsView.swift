//
//  UserStatsView.swift
//  TwitterClone
//
//  Created by Çare C. on 6.04.2023.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack (spacing: 24) {
            HStack (spacing: 4) {
                Text("807")
                    .font(.subheadline)
                    .bold()
                
                Text("following")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            HStack (spacing: 4) {
                Text("6.9M")
                    .font(.subheadline)
                    .bold()
                
                Text("follower")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
