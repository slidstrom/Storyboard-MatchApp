//
//  CardModel.swift
//  MatchApp
//
//  Created by DSIAdmin on 12/27/21.
//

import Foundation
import UIKit

class CardModel {
    
    func getCards() -> [Card] {
        
        // Declare an empty array to store the cards
        var generatedCards = [Card]()
        
        // Declare array to keep track of cards that have been added already
        var alreadyAdded = [Int]()
        
        /*
        // Randomly Generate 8 pairs of cards
        for _ in 1...8 {
            
            // Generate a random number
            let randomNumber = Int.random(in: 1...13)
            
            // Create two new card objects
            let cardOne = Card()
            let cardTwo = Card()
            
            // Set their image names
            cardOne.imageName = "card\(randomNumber)"
            cardTwo.imageName = "card\(randomNumber)"
            print(randomNumber)
            
            // Add them to the array
            generatedCards += [cardOne, cardTwo]
            
        }
        */
        // Randomly Generate 8 pairs of cards without duplicates
        while generatedCards.count != 16 {
            
            // Generate a random number
            let randomNumber = Int.random(in: 1...13)
            
            // Check if a card has already been generated for that number
            // if a card has not been generated for that number, generate it
            if alreadyAdded.contains(randomNumber) == false {
                
                // Add randomNumber to our alreadyAdded array
                alreadyAdded += [randomNumber]
                
                // Generate the cards
                let cardOne = Card()
                let cardTwo = Card()
                
                // Set their image names
                cardOne.imageName = "card\(randomNumber)"
                cardTwo.imageName = "card\(randomNumber)"
                print(randomNumber)
                
                // Add them to the array
                generatedCards += [cardOne, cardTwo]
                
            }
            
        }
        
        // Randomize the cards within the array
        generatedCards.shuffle()
        
        // Return the array
        return generatedCards
        
    }
    
}
