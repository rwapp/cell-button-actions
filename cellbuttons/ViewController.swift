//
//  ViewController.swift
//  cellbuttons
//
//  Created by Rob Whitaker on 01/08/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak private var tableView: UITableView!
    private var actions: PerformAction!

    override func viewDidLoad() {
        super.viewDidLoad()
        actions = PerformAction(viewController: self)

        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "buttonsCell", for: indexPath) as! ButtonsCell
            cell.actions = actions
            return cell

        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "actionsCell", for: indexPath) as! ActionsCell
            cell.actions = actions
            return cell
        }
    }
}
