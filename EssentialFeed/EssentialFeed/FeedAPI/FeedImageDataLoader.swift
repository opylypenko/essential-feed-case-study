//
//  FeedImageDataLoader.swift
//  EssentialFeediOS
//
//  Created by Oleksandr Pylypenko on 21.01.2024.
//

import Foundation

public protocol FeedImageDataLoaderTask {
    func cancel()
}

public protocol FeedImageDataLoader {
    typealias Result = Swift.Result<Data, Error>
    
    func loadImageData(from: URL, completion: @escaping (Result) -> Void) -> FeedImageDataLoaderTask
}
