//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Oleksandr Pylypenko on 23.01.2024.
//

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool
    
    var hasLocation: Bool {
        return location != nil
    }
}