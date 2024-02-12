//
//  ImageCommentsLocalizationTests.swift
//  EssentialFeedTests
//
//  Created by Oleksandr Pylypenko on 12.02.2024.
//

import XCTest
import EssentialFeed

final class ImageCommentsLocalizationTests: XCTestCase {

    func test_localizedStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "ImageComments"
        let bundle = Bundle(for: ImageCommentsPresenter.self)
        assertLocalizedKeyAndValuesExist(in: bundle, table)
    }
    
}
