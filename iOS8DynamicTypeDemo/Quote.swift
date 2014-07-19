//
//  Quote.swift
//  iOS8DynamicTypeDemo
//
//  Created by Natasha Murashev on 7/19/14.
//  Copyright (c) 2014 NatashaTheRobot. All rights reserved.
//

class Quote {
   
    let content: String
    let scenario: String
    
    class func allQuotes() -> [Quote] {
        var quotes = [Quote]()
        
        quotes += Quote(content: "Sometimes the road less traveled is less traveled for a reason.", scenario: "Jerry in The Baby Shower")
        quotes += Quote(content: "I can't go to a bad movie by myself. What, am I gonna make sarcastic remarks to strangers?", scenario: "Jerry in The Chinese Restaurant")
        quotes += Quote(content: "You know the message you're sending out to the world with these sweatpants? You're telling the world, 'I give up. I can't compete in normal society. I'm miserable, so I might as well be comfortable.", scenario: "Jerry in The Pilot")
        quotes += Quote(content: "Man, it's the nineties... It's Hammer time!", scenario: "Kramer in The Parking Space")
        quotes += Quote(content: "Why is nice bad? What kind of a sick society are we living in when nice is bad?", scenario: "George in The Cafe")
        quotes += Quote(content: "When you look annoyed all the time, people think that you're busy.", scenario: "George in The Hot Tub")
        quotes += Quote(content: "I would drape myself in velvet if it were socially acceptable.", scenario: "George in The Label Maker")
        quotes += Quote(content: "You know what they say, 'You don't sell the steak, you sell the sizzle.'", scenario: "Kramer in The Bizzaro Jerry")
        
        return quotes
    }
    
    init(content: String, scenario: String) {
        self.content = content
        self.scenario = scenario
    }
    
}
