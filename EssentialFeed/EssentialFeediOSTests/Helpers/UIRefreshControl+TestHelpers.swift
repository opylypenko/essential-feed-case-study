//
//  UIRefreshControl+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Oleksandr Pylypenko on 21.01.2024.
//

import UIKit

private extension UIRefreshControl {
    func simulatePullToRefresh() {
        allTargets.forEach{ target in
            actions(forTarget: target, forControlEvent: .valueChanged)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}
