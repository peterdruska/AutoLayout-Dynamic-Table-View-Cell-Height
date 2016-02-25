//
//  ViewController.swift
//  TableView-AutoLayout
//
//  Created by Peter Druska on 23.2.16.
//  Copyright © 2016 Bedots. All rights reserved.
//

import UIKit

class MyTableCell: UITableViewCell {
	
	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var addressLabel: UILabel!
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

	@IBOutlet weak var tableView: UITableView!
	override func viewDidLoad() {
		super.viewDidLoad()
		
		tableView.delegate = self
		tableView.dataSource = self
		
		tableView.estimatedRowHeight = 68.0
		tableView.rowHeight = UITableViewAutomaticDimension
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! MyTableCell
		cell.nameLabel.text = "Tyrannosaurus rex"
		cell.addressLabel.text = "Tyrannosaurus lived throughout what is now western North America, on what was then an island continent known as Laramidia."
		return cell
	}
	
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 1
	}

}

