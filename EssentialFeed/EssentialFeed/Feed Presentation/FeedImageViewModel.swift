//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by Oleksandr Pylypenko on 27.01.2024.
//

public struct FeedImageViewModel {
    public let description: String?
    public let location: String?
        
    public var hasLocation: Bool {
        return location != nil
    }
}
