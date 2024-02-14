//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Oleksandr Pylypenko on 25.01.2024.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
