//
//  Button.swift
//  Calculator
//
//  Created by Macbook on 6.03.22.
//

import UIKit

class Button: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = self.frame.height / 2
    }
}
