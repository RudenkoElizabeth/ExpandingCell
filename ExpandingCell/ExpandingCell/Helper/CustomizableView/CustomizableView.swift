//
//  CustomizableView.swift
//  CellTest
//
//  Created by Elizabeth Rudenko on 15/03/2019.
//  Copyright © 2019 Elizabeth Rudenko. All rights reserved.
//

import UIKit.UIView

class CustomizableView: UIView {
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.masksToBounds = true
            layer.cornerRadius = cornerRadius
        }
    }
}
