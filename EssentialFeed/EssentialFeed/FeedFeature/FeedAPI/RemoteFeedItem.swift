//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Oleksandr Pylypenko on 04.01.2024.
//

import Foundation

struct RemoteFeedItem: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL
}
