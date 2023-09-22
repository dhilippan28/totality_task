//
//  SetRounded.swift
//  Totality Corp
//
//  Created by Sanjay on 21/09/23.
//

import UIKit

extension UIView {
   func setRounded() {
      let radius = CGRectGetWidth(self.frame) / 2
      self.layer.cornerRadius = radius
      self.layer.masksToBounds = true
   }
}
