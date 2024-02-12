//
//  ImageCommentsPresenter.swift
//  EssentialFeed
//
//  Created by Oleksandr Pylypenko on 12.02.2024.
//

import Foundation

public final class ImageCommentsPresenter {
    public static var title: String {
        NSLocalizedString("IMAGE_COMMENTS_VIEW_TITLE",
                          tableName: "ImageComments",
                          bundle: Bundle(for: FeedPresenter.self),
                          comment: "Title for the image comments view")
    }
}
