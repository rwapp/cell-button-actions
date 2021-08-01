//
//  ActionsCell.swift
//  cellbuttons
//
//  Created by Rob Whitaker on 01/08/2021.
//

import Foundation
import UIKit

final class ActionsCell: UITableViewCell {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!

    var actions: PerformAction?

    override func awakeFromNib() {
        button1.isAccessibilityElement = false
        button2.isAccessibilityElement = false
        button3.isAccessibilityElement = false
        button4.isAccessibilityElement = false

        let action1 = UIAccessibilityCustomAction(name: "Action 1",
                                                  image: UIImage(systemName: "1.circle")) { _ in
            self.actions?.action(.one)
            return true
        }

        let action2 = UIAccessibilityCustomAction(name: "Action 2",
                                                  image: UIImage(systemName: "2.circle")) { _ in
            self.actions?.action(.two)
            return true
        }

        let action3 = UIAccessibilityCustomAction(name: "Action 3",
                                                  image: UIImage(systemName: "3.circle")) { _ in
            self.actions?.action(.three)
            return true
        }

        let action4 = UIAccessibilityCustomAction(name: "Action 4",
                                                  image: UIImage(systemName: "4.circle")) { _ in
            self.actions?.action(.four)
            return true
        }

        accessibilityCustomActions = [action1, action2, action3, action4]
    }

    @IBAction func action1Pressed(_ sender: Any) {
        actions?.action(.one)
    }

    @IBAction func action2Pressed(_ sender: Any) {
        actions?.action(.two)
    }

    @IBAction func action3Pressed(_ sender: Any) {
        actions?.action(.three)
    }

    @IBAction func action4Pressed(_ sender: Any) {
        actions?.action(.four)
    }
}
