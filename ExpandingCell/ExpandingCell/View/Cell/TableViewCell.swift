//
//  TableViewCell.swift
//  CellTest
//
//  Created by Elizabeth Rudenko on 23/01/2019.
//  Copyright © 2019 Elizabeth Rudenko. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var openView: UIView!
    private var subviewsArray = [SectionView]()

    override func prepareForReuse() {
        super.prepareForReuse()
        openView.isHidden = true
        openView.subviews.forEach({ $0.removeFromSuperview() })
        subviewsArray.removeAll()
    }

    func setupSubviews(_ count: Int) {
        for index in 0..<count {
            let view: SectionView = .fromNib()
            view.setupTextLabel(Constants.randomText[index])
            subviewsArray.append(view)
            openView.addSubview(view)
            view.translatesAutoresizingMaskIntoConstraints = false
            view.leadingAnchor.constraint(equalTo: openView.leadingAnchor).isActive = true
            view.trailingAnchor.constraint(equalTo: openView.trailingAnchor).isActive = true
            view.topAnchor.constraint(equalTo: index == 0 ? openView.topAnchor : subviewsArray[index - 1].bottomAnchor).isActive = true
            if index == count - 1 { view.bottomAnchor.constraint(equalTo: openView.bottomAnchor).isActive = true }
        }
        openView.isHidden = false
    }

    func setOpenViewFor(state: Constants.State, countSubviews: Int) {
        state == .closed ? openView.isHidden = true : setupSubviews(countSubviews)
    }
}
