//
//  ErrorView.swift
//  EssentialFeediOS
//
//  Created by Oleksandr Pylypenko on 25.01.2024.
//

import UIKit

public final class ErrorView: UIView {
    @IBOutlet private var label: UILabel!
    
    public var message: String? {
        get { return label.text }
        set { label.text = newValue }
    }
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        
        label.text = nil
    }
}
