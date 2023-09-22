//
//  File.swift
//  Totality Corp
//
//  Created by Sanjay on 21/09/23.
//

import UIKit

extension UIView {
    func applyCornerRadius(_ radius: CGFloat) {
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
    }
}
