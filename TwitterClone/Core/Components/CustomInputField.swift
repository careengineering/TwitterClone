//
//  CustomInputField.swift
//  TwitterClone
//
//  Created by Çare C. on 9.04.2023.
//

import SwiftUI
import Localize_Swift

struct CustomInputField: View {
    let imageName: String
    let placeHolderText: String
    
    @Binding var text: String

    var body: some View {
        VStack {
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.darkGray))
                
                TextField(placeHolderText.localized(), text: $text)
            }
            Divider()
                .background(Color(.darkGray))
        }
    }
}

struct CustomInputField_Previews: PreviewProvider {
    static var previews: some View {
        CustomInputField(imageName: "envelope",
                         placeHolderText: "Email",
                         text: .constant(""))
    }
}
