//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Oleksandr Pylypenko on 28.01.2024.
//

import Combine
import Foundation

public protocol FeedImageDataStore {
    func insert(_ data: Data, for url: URL) throws
    func retrieve(dataForURL url: URL) throws -> Data?
}
