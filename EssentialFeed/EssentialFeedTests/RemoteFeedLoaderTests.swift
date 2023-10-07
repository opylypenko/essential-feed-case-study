//
//  EssentialFeedTests.swift
//  EssentialFeedTests
//
//  Created by Oleksandr Pylypenko on 07.10.2023.
//

import XCTest
@testable import EssentialFeed

class RemoteFeedLoader {
    
}

class HTTPClient {
    var requestedURL: URL?
}

final class RemoteFeedLoaderTests: XCTestCase {

    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClient()
        let sut = RemoteFeedLoader()
        
        XCTAssertNil(client.requestedURL)
    }

}
