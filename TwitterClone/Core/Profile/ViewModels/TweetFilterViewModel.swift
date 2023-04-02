//
//  TweetFilterViewModel.swift
//  TwitterClone
//
//  Created by Çare C. on 2.04.2023.
//

import Foundation

enum TweetFilterViewModel: Int, CaseIterable {
    case tweets
    case replies
    case likes
    
    var title: String {
        switch self {
        case .tweets: return "tweets"
        case .replies: return "replies"
        case .likes: return "likes"
        }
    }
}
