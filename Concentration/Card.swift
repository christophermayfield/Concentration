//
//  Card.swift
//  Concentration
//
//  Created by Christopher Mayfield on 11/22/17.
//  Copyright © 2017 Christopher Mayfield. All rights reserved.
//

import Foundation

struct Card {
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    static var identifierFactory = 0
   
    static func getUniqueIdentifier() -> Int {
        //you can't send this to a card, only the type Card understands this message
        
        Card.identifierFactory += 1
        return Card.identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
