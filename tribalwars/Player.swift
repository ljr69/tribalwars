//
//  Player.swift
//  tribalwars
//
//  Created by Lloyd on 15/05/2016.
//  Copyright © 2016 Lloyd. All rights reserved.
//

import Foundation

class Player: Character {
    private var _name = "Player"
    
    var name: String {
        get {
            return _name
        }
    }
    
    convenience init(name: String, hp: Int, attackPwr: Int) {
        
        self.init(startHp: hp, attackPwr: attackPwr)
        
        _name = name
        
    }
}