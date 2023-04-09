//
//  SideMenuViewModel.swift
//  TwitterClone
//
//  Created by Çare C. on 6.04.2023.
//

import Foundation
import Localize_Swift

enum SideMenuViewModel: Int, CaseIterable {
    case profile
    case lists
    case bookmarks
    case logout
    
    var title: String {
        switch self {
        case .profile: return "profile".localized()
        case .lists: return "lists".localized()
        case .bookmarks: return "bookmarks".localized()
        case .logout: return "logout".localized()
        }
    }
    
    var imageName: String {
        switch self {
        case .profile: return "person"
        case .lists: return "list.bullet"
        case .bookmarks: return "bookmark"
        case .logout: return "arrow.left.square"
        }
    }
}


