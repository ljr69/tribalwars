//
//  Character.swift
//  tribalwars
//
//  Created by Lloyd on 15/05/2016.
//  Copyright © 2016 Lloyd. All rights reserved.
//

import Foundation

class Character {
    private var _hp: Int = 100
    private var _attackPwr: Int = 10
    
    var hp: Int {
        get {
            return _hp
        }
    }
    
    var attackPwr: Int {
        get {
            return _attackPwr
        }
    }
    
    var isAlive: Bool {
        get {
            if hp <= 0 {
                return false
            } else {
                return true
            }
        }
    }
    
    init(startHp: Int, attackPwr: Int) {
        self._hp = startHp
        self._attackPwr = attackPwr
    }
    
    func attacked(attackPwr: Int) {
        
        let attack = arc4random_uniform(UInt32(attackPwr)) + 1
        print(attack)
        self._hp -= Int(attack)
        
    }
    
}