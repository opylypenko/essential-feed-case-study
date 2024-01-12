//
//  FeedCacheTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Oleksandr Pylypenko on 05.01.2024.
//

import Foundation
import EssentialFeed

func uniqueItem() -> FeedImage {
    FeedImage(id: UUID(), description: "any", location: "any", url: anyURL())
}

func uniqueImageFeed() -> (models: [FeedImage], local: [LocalFeedImage]) {
    let items = [uniqueItem(), uniqueItem()]
    let localItems = items.map { LocalFeedImage(id: $0.id, description: $0.description, location: $0.location, url: $0.url) }
    return (items, localItems)
}

extension Date {
    private var feedCacheMaxAgeInDays: Int { 7 }
    
    func minusFeedCacheMaxAge() -> Date {
        adding(days: -feedCacheMaxAgeInDays)
    }
    
    private func adding(days: Int) -> Date {
        Calendar(identifier: .gregorian).date(byAdding: .day, value: days, to: self)!
    }
}

extension Date {
    func adding(seconds: TimeInterval) -> Date {
        self + seconds
    }
}