//
//  RemoteImageCommentsFeedLoader.swift
//  EssentialFeedTests
//
//  Created by Oleksandr Pylypenko on 07.02.2024.
//

import Foundation

public typealias RemoteImageCommentsLoader = RemoteLoader<[ImageComment]>

public extension RemoteImageCommentsLoader {
    convenience init(url: URL, client: HTTPClient) {
        self.init(url: url, client: client, mapper: ImageCommentsMapper.map)
    }
}
