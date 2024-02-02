//
//  FeedImageDataCache.swift
//  EssentialFeed
//
//  Created by Oleksandr Pylypenko on 03.02.2024.
//

import Foundation

public protocol FeedImageDataCache {
    typealias Result = Swift.Result<Void, Error>

    func save(_ data: Data, for url: URL, completion: @escaping (Result) -> Void)
}
