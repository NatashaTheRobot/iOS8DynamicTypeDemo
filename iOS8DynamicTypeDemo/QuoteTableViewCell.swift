//
//  QuoteTableViewCell.swift
//  iOS8DynamicTypeDemo
//
//  Created by Natasha Murashev on 7/19/14.
//  Copyright (c) 2014 NatashaTheRobot. All rights reserved.
//

import UIKit

class QuoteTableViewCell: UITableViewCell {

    @IBOutlet weak var quoteContentLabel: UILabel!
    @IBOutlet weak var scenarioLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func configure(#quote : Quote) {
        
        quoteContentLabel.text = quote.content
        quoteContentLabel.accessibilityLabel = "Quote Content"
        quoteContentLabel.accessibilityValue = quote.content
        
        scenarioLabel.text = "- \(quote.scenario)"
        scenarioLabel.accessibilityLabel = "Quote Scenario"
        scenarioLabel.accessibilityValue = quote.scenario
        
        
        quoteContentLabel.font = UIFont.preferredFontForTextStyle(UIFontTextStyleHeadline)
        scenarioLabel.font = UIFont.preferredFontForTextStyle(UIFontTextStyleSubheadline)
    }

}
