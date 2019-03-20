//
//  ViewController.swift
//  CellTest
//
//  Created by Elizabeth Rudenko on 23/01/2019.
//  Copyright © 2019 Elizabeth Rudenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    private var stateArray = [Constants.State]()
    private var countSubviewsArray = [Int]()
    private var count: Int!

    override func viewDidLoad() {
        super.viewDidLoad()
        count = Int.random(in: 1...10)
        for index in 0..<count {
            stateArray.append(.closed)
            countSubviewsArray.append(count - index)
        }
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.cell) as! TableViewCell
        cell.setOpenViewFor(state: stateArray[indexPath.row],
                            countSubviews: countSubviewsArray[indexPath.row])
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        stateArray[indexPath.row] = stateArray[indexPath.row].opposite
        tableView.reloadRows(at: [indexPath], with: .fade)
    }
}
