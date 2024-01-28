//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Oleksandr Pylypenko on 28.01.2024.
//

import Foundation

public protocol FeedImageDataStore {
    typealias Result = Swift.Result<Data?, Error>
    
    func retrieve(dataForURL url: URL, completion: @escaping (Result) -> Void)
}
