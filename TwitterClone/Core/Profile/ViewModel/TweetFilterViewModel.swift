//
//  TweetFilterViewModel.swift
//  TwitterClone
//
//  Created by Çare C. on 2.04.2023.
//

import Foundation
import Localize_Swift

enum TweetFilterViewModel: Int, CaseIterable {
    case tweets
    case replies
    case likes
    
    var title: String {
        switch self {
        case .tweets: return "tweets".localized()
        case .replies: return "replies".localized()
        case .likes: return "likes".localized()
        }
    }
}
