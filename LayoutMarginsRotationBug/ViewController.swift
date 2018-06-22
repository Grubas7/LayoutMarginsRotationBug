//
//  ViewController.swift
//  LayoutMarginsRotationBug
//
//  Created by Adam Grzegorowski on 22/06/2018.
//  Copyright © 2018 bugreport. All rights reserved.
//

import UIKit

class ViewController: UIViewController {}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "identifier", for: indexPath)
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        print("UIViewController's root view layout margins \(view.layoutMargins)")
        print("UITableView layout margins \(tableView.layoutMargins)")

        return UITableViewAutomaticDimension
    }
}
