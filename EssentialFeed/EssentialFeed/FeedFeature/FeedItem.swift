//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Oleksandr Pylypenko on 07.10.2023.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
