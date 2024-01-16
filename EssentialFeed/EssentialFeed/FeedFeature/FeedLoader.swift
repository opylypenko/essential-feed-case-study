//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Oleksandr Pylypenko on 07.10.2023.
//

import Foundation

public typealias LoadFeedResult = Result<[FeedImage], Error>

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
