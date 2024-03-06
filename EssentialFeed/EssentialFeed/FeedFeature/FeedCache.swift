//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Oleksandr Pylypenko on 02.02.2024.
//

import Foundation

public protocol FeedCache {
    func save(_ feed: [FeedImage]) throws
}
