//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Oleksandr Pylypenko on 21.01.2024.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
