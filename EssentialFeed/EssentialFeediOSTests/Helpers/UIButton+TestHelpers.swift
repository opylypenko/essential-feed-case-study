//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Oleksandr Pylypenko on 21.01.2024.
//

import UIKit

private extension UIButton {
    func simulateTap() {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: .touchUpInside)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}
