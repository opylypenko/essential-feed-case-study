//
//  ValidateFeedCacheUseCaseTests.swift
//  EssentialFeedTests
//
//  Created by Oleksandr Pylypenko on 05.01.2024.
//

import XCTest
import EssentialFeed

final class ValidateFeedCacheUseCaseTests: XCTestCase {

    func test_init_doesNotMessageStoreUponCreation() {
        let (_, store) = makeSUT()
        
        XCTAssertEqual(store.receivedMessages, [])
    }

    func test_validateCache_deletesCacheOnRetrievalError() {
        let (sut, store) = makeSUT()
        
        sut.validateCache()
        store.completeRetrieval(with: anyNSError())
        
        XCTAssertEqual(store.receivedMessages, [.retrieve, .deleteCachedFeed])
    }
    
    func test_validateCache_doesNotDeleteCacheOnEmptyCache() {
        let (sut, store) = makeSUT()
        
        sut.validateCache()
        store.completeRetrievalWithEmptyCache()
        
        XCTAssertEqual(store.receivedMessages, [.retrieve])
    }
    
    func test_validateCache_doesNotDeleteCacheOnLessThenSevenDaysOldCache() {
        let feed = uniqueImageFeed()
        let fixcedCurrentDate = Date()
        let lessThanSevenDaysOldTimestamp = fixcedCurrentDate.adding(days: -7).adding(seconds: 1)
        let (sut, store) = makeSUT(currentDate: { fixcedCurrentDate })
        
        sut.validateCache()
        store.completeRetrieval(with: feed.local, timestamp: lessThanSevenDaysOldTimestamp)
        
        XCTAssertEqual(store.receivedMessages, [.retrieve])
    }
    
    // MARK: - Helpers
    
    private func makeSUT(currentDate: @escaping () -> Date = Date.init, file: StaticString = #filePath, line: UInt = #line) -> (sut: LocalFeedLoader, store: FeedStoreSpy) {
        let store = FeedStoreSpy()
        let sut = LocalFeedLoader(store: store, currentDate: currentDate)
        trackForMemoryLeaks(store, file: file, line: line)
        trackForMemoryLeaks(sut, file: file, line: line)
        return (sut, store)
    }
    
    private func anyNSError() -> NSError {
        NSError(domain: "any error", code: 0)
    }
    
    private func uniqueItem() -> FeedImage {
        FeedImage(id: UUID(), description: "any", location: "any", url: anyURL())
    }
    
    private func uniqueImageFeed() -> (models: [FeedImage], local: [LocalFeedImage]) {
        let items = [uniqueItem(), uniqueItem()]
        let localItems = items.map { LocalFeedImage(id: $0.id, description: $0.description, location: $0.location, url: $0.url) }
        return (items, localItems)
    }
    
    private func anyURL() -> URL {
        URL(string: "https://any-url.com")!
    }
}

private extension Date {
    func adding(days: Int) -> Date {
        Calendar(identifier: .gregorian).date(byAdding: .day, value: days, to: self)!
    }
    
    func adding(seconds: TimeInterval) -> Date {
        self + seconds
    }
}
