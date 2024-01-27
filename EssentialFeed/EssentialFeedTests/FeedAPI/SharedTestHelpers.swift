//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Oleksandr Pylypenko on 05.01.2024.
//

import Foundation
import EssentialFeed

func anyNSError() -> NSError {
    NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    URL(string: "https://any-url.com")!
}

func anyData() -> Data {
    return Data("any data".utf8)
}
