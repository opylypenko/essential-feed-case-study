//
//  FeedImageDataLoader.swift
//  EssentialFeediOS
//
//  Created by Oleksandr Pylypenko on 21.01.2024.
//

import Foundation

public protocol FeedImageDataLoader {
    func loadImageData(from: URL) throws -> Data
}
