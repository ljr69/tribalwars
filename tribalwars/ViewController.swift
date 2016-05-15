//
//  ViewController.swift
//  tribalwars
//
//  Created by Lloyd on 15/05/2016.
//  Copyright © 2016 Lloyd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var player1Img: UIImageView!
    @IBOutlet weak var player2Img: UIImageView!
    @IBOutlet weak var printMsgLbl: UILabel!
    @IBOutlet weak var p1AttackLbl: UILabel!
    @IBOutlet weak var p2AttackLbl: UILabel!
    @IBOutlet weak var p1HpLbl: UILabel!
    @IBOutlet weak var p2HpLbl: UILabel!
    
    var player1: Player!
    var player2: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player1 = Player(name: "Player 1", hp: 100, attackPwr: 10)
        player2 = Player(name: "Player 2", hp: 100, attackPwr: 10)
        
        p1HpLbl.text = "\(player1.hp) HP"
        p2HpLbl.text = "\(player2.hp) HP"
        
    }

    @IBAction func p1AttackPressed(sender: AnyObject) {
        player2.attacked(player1.attackPwr)
        
        if !player2.isAlive {
            printMsgLbl.text = "\(player1.name) is Victorious!"
        } else {
            p2HpLbl.text = "\(player2.hp)"
        }
        
    }

    @IBAction func p2AttackPressed(sender: AnyObject) {
    }
    
}

