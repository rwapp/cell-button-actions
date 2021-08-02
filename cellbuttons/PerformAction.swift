//
//  PerformAction.swift
//  cellbuttons
//
//  Created by Rob Whitaker on 01/08/2021.
//

import Foundation
import UIKit

enum Action: String {
    case wishlist, basket, buyNow

    var description: String {

        switch self {
        case .wishlist:
            return "Added to wishlist"
        case .basket:
            return "Added to basket"
        case .buyNow:
            return "Buy now"
        }

    }
}

final class PerformAction: NSObject {

    private weak var viewController: UIViewController?

    init(viewController: UIViewController) {
        self.viewController = viewController
    }

    func action(_ action: Action) {
        let alert = UIAlertController(title: "Action chosen",
                                      message: action.description,
                          preferredStyle: .alert)
        let action = UIAlertAction(title: "OK",
                                   style: .default) {_ in
            self.viewController?.dismiss(animated: true)
        }
        alert.addAction(action)
        viewController?.present(alert,
                               animated: true)
    }
}
