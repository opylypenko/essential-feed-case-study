//
//  FeedImageDataMapper.swift
//  EssentialFeed
//
//  Created by Oleksandr Pylypenko on 08.02.2024.
//

import Foundation

public final class FeedImageDataMapper {
    public enum Error: Swift.Error {
        case invalidData
    }

    public static func map(_ data: Data, from response: HTTPURLResponse) throws -> Data {
        guard response.isOK, !data.isEmpty else {
            throw Error.invalidData
        }

        return data
    }
}
