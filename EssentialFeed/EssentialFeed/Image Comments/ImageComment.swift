//
//  ImageComment.swift
//  EssentialFeed
//
//  Created by Oleksandr Pylypenko on 07.02.2024.
//

import Foundation

public struct ImageComment: Equatable {
    public let id: UUID
    public let message: String
    public let createAt: Date
    public let username: String
    
    public init(id: UUID, message: String, createAt: Date, username: String) {
        self.id = id
        self.message = message
        self.createAt = createAt
        self.username = username
    }
}
