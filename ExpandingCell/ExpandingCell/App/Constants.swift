//
//  Constants.swift
//  CellTest
//
//  Created by Elizabeth Rudenko on 23/01/2019.
//  Copyright © 2019 Elizabeth Rudenko. All rights reserved.
//

import Foundation

class Constants {
    static let cell = "TableViewCell"
    static let randomText = [
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
        "Suspendisse lobortis diam euismod, fermentum enim quis, tempus ex.",
        "Mauris vitae mauris nec metus convallis posuere tincidunt eu orci.",
        "Quisque tristique felis nec ex placerat, vel auctor quam pellentesque.",
        "Praesent vitae mauris luctus, consequat ex a, porta est.",
        "Nam venenatis ligula ac ultricies aliquet.",
        "Sed sagittis nunc vel nunc laoreet scelerisque.",
        "Nulla at magna sed mi aliquet iaculis.",
        "Proin finibus nulla ac nulla egestas tristique.",
        "Integer at eros ac augue bibendum interdum nec ultricies mauris."

    ]
    enum State {
        case open
        case closed
    }
}

extension Constants.State {
    var opposite: Constants.State {
        switch self {
        case .closed: return .open
        case .open: return .closed
        }
    }
}
