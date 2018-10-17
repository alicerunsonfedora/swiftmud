//
//  Player.swift
//  SwiftMUD
//
//  Created by Marquis Kurt on 10/17/18.
//  Copyright © 2018 Marquis Kurt. All rights reserved.
//
class Player: Entity {
    var experience, level: Int!
    
    /**
     Heals the player by an amount. If resultant health is over maximum, sets it to maximum instead.
     
     - Parameters:
        - amount: The amount to heal by.
     */
    func heal(_ amount: Int) {
        health += amount

        if (health > maximumHealth) {
            health = maximumHealth
        }
    }
    
    /**
     Levels the player up and resets the experience points to 0.
     
     - Parameters:
        - amount: The amount to level up by.
     */
    func levelUp(_ amount: Int) {
        level += amount
        experience = 0
    }
    
    /**
     Constructs the Player class. Automatically initializes the Entity class with type Player health and health at 100.
     
     - Parameters:
        - myName: The name of the player.
     */
    init(_ myName: String) {
        super.init(myName, "Player", 100)
    }
}
