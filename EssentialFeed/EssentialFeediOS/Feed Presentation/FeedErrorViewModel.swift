//
//  FeedErrorViewModel.swift
//  EssentialFeediOS
//
//  Created by Oleksandr Pylypenko on 25.01.2024.
//

struct FeedErrorViewModel {
    let message: String?
    
    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
