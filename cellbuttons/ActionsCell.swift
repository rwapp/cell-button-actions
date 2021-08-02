//
//  ActionsCell.swift
//  cellbuttons
//
//  Created by Rob Whitaker on 01/08/2021.
//

import Foundation
import UIKit

final class ActionsCell: UITableViewCell {

    @IBOutlet weak var wishlistButton: UIButton!
    @IBOutlet weak var basketButton: UIButton!
    @IBOutlet weak var buyButton: UIButton!

    var actions: PerformAction?

    override func awakeFromNib() {
        wishlistButton.isAccessibilityElement = false
        basketButton.isAccessibilityElement = false
        buyButton.isAccessibilityElement = false

        let wishlist = UIAccessibilityCustomAction(name: "Add to Wishlist",
                                                  image: UIImage(systemName: "wand.and.stars")) { _ in
            self.actions?.action(.wishlist)
            return true
        }

        let basket = UIAccessibilityCustomAction(name: "Add to Basket",
                                                  image: UIImage(systemName: "bag.badge.plus")) { _ in
            self.actions?.action(.basket)
            return true
        }

        let buyNow = UIAccessibilityCustomAction(name: "Buy Now",
                                                  image: UIImage(systemName: "creditcard")) { _ in
            self.actions?.action(.buyNow)
            return true
        }

        accessibilityCustomActions = [wishlist, basket, buyNow]
    }

    @IBAction func action1Pressed(_ sender: Any) {
        actions?.action(.wishlist)
    }

    @IBAction func action2Pressed(_ sender: Any) {
        actions?.action(.basket)
    }

    @IBAction func action3Pressed(_ sender: Any) {
        actions?.action(.buyNow)
    }
}
