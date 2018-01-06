//
//  Concentration.swift
//  Concentration
//
//  Created by Christopher Mayfield on 11/22/17.
//  Copyright © 2017 Christopher Mayfield. All rights reserved.
//

import Foundation

class Concentration {
    var cards = [Card]()
    var score = 0
    var indexOfOneAndOnlyCard: Int?
    func chooseCard(at index: Int) {
        if !cards[index].isMatched {
            if let matchedIndex = indexOfOneAndOnlyCard, matchedIndex != index {
                //check if they match
                if cards[matchedIndex].identifier == cards[index].identifier {
                    cards[matchedIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyCard = nil
            } else {
                //either no cards or 2 cards are face up
                for flipDownIndex in cards.indices {
                    cards[flipDownIndex].isFaceUp = false
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyCard = index
            }
        }
    }
    
    
  
    
    init(numberOfPairsOfCards: Int) {
        var unShuffledCards: [Card] = []
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
            unShuffledCards += [card, card]
        }
        //TODO: Shuffle the cards
        while !unShuffledCards.isEmpty {
            let randomIndex = Int(arc4random_uniform(UInt32(unShuffledCards.count)))
            let card = unShuffledCards.remove(at: randomIndex);
            cards.append(card)
            
            var fin: Int;
            
            
            
        }
        
    }
}


