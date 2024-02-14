//
//  UITableView+Dequeueing.swift
//  EssentialFeediOS
//
//  Created by Oleksandr Pylypenko on 24.01.2024.
//

import UIKit

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        let identifier = String(describing: T.self)
        return dequeueReusableCell(withIdentifier: identifier) as! T
    }
}
