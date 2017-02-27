//
//  ViewController.swift
//  TableViewInSwift
//
//  Created by Yogesh Padekar on 2/27/17.
//  Copyright © 2017 Yogesh Padekar. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    // MARK:- TableView data source
    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10

    }
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "ItemCell")!
        cell.textLabel?.text = "This is item number \(indexPath.row + 1)"
        cell.detailTextLabel?.text = "Description \(indexPath.row + 1)"
        return cell
    }

    // MARK:- TableView delegate
    public override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alertController = UIAlertController(title: "TableViewInSwift",
                                                message: "This is item number \(indexPath.row + 1)",
                                                preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)

        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }

}

