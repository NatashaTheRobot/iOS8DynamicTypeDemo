//
//  QuotesTableViewController.swift
//  iOS8DynamicTypeDemo
//
//  Created by Natasha Murashev on 7/19/14.
//  Copyright (c) 2014 NatashaTheRobot. All rights reserved.
//

import UIKit

class QuotesTableViewController: UITableViewController {

    @lazy var quotes = Quote.allQuotes()
    @lazy var quoteCellIdentifier = "QuoteTableViewCell"
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self,
            selector: "onContentSizeChange:",
            name: UIContentSizeCategoryDidChangeNotification,
            object: nil)
        
        tableView.estimatedRowHeight = 89
        tableView.rowHeight = UITableViewAutomaticDimension

    }
    
    override func viewDidDisappear(animated: Bool)  {
        super.viewDidDisappear(animated)
        
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }
    
    func onContentSizeChange(notification: NSNotification) {
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return quotes.count
    }

    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell? {
        let cell = tableView.dequeueReusableCellWithIdentifier(quoteCellIdentifier, forIndexPath: indexPath) as QuoteTableViewCell

        cell.configure(quote: quotes[indexPath.row])

        return cell
    }
    
}
