//
//  SectionView.swift
//  CellTest
//
//  Created by Elizabeth Rudenko on 23/01/2019.
//  Copyright © 2019 Elizabeth Rudenko. All rights reserved.
//

import UIKit

class SectionView: UIView {
    @IBOutlet weak var textLabel: UILabel!

    func setupTextLabel(_ text: String?) {
        textLabel.text = text
    }
}
