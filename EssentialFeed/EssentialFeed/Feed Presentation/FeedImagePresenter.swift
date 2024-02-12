//
//  FeedImagePresenter.swift
//  EssentialFeed
//
//  Created by Oleksandr Pylypenko on 27.01.2024.
//

import Foundation

public final class FeedImagePresenter {
    
    public static func map(_ image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(
            description: image.description,
            location: image.location)
    }
}
