//
//  FeedEndpointTests.swift
//  EssentialFeed
//
//  Created by Oleksandr Pylypenko on 23.02.2024.
//

import Foundation

public enum FeedEndpoint {
    case get

    public func url(baseURL: URL) -> URL {
        switch self {
        case .get:
            return baseURL.appendingPathComponent("/v1/feed")
        }
    }
}
