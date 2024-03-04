//
//  FeedImageDataCache.swift
//  EssentialFeed
//
//  Created by Oleksandr Pylypenko on 03.02.2024.
//

import Foundation

public protocol FeedImageDataCache {
    func save(_ data: Data, for url: URL) throws
}
