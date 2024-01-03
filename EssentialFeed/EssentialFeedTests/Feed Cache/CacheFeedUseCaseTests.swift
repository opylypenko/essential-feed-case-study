//
//  CacheFeedUseCaseTests.swift
//  EssentialFeedTests
//
//  Created by Oleksandr Pylypenko on 03.01.2024.
//

import XCTest

class LocalFeedLoader {
    init(store: FeedStore) {
        
    }
}

class FeedStore {
    var deleteCachedFeedCallCount = 0
}

final class CacheFeedUseCaseTests: XCTestCase {


    func test_init_doesNotDeleteCacheUponCreation() throws {
        let store = FeedStore()
        _ = LocalFeedLoader(store: store)
        
        XCTAssertEqual(store.deleteCachedFeedCallCount, 0)
    }


}
