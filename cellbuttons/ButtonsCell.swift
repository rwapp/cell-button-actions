//
//  ButtonsCell.swift
//  cellbuttons
//
//  Created by Rob Whitaker on 01/08/2021.
//

import Foundation
import UIKit

final class ButtonsCell: UITableViewCell {

    var actions: PerformAction?

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
