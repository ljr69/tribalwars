//
//  ViewController.swift
//  tribalwars
//
//  Created by Lloyd on 15/05/2016.
//  Copyright © 2016 Lloyd. All rights reserved.
//

import UIKit
import AVFoundation

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
    
    var victorySound: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player1 = Player(name: "Player 1", hp: 100, attackPwr: 10)
        player2 = Player(name: "Player 2", hp: 100, attackPwr: 10)
        
        p1HpLbl.text = "\(player1.hp) HP"
        p2HpLbl.text = "\(player2.hp) HP"
        
        let path = NSBundle.mainBundle().pathForResource("Evil_laugh", ofType: "mp3")
        let soundURL = NSURL(fileURLWithPath: path!)
        
        do {
            try victorySound = AVAudioPlayer(contentsOfURL: soundURL)
            victorySound.prepareToPlay()
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
    }

    @IBAction func p1AttackPressed(sender: AnyObject) {
        
        player2.attacked(player1.attackPwr)
        
        if !player2.isAlive {
            
            p2HpLbl.text = "DEAD!"
            p1HpLbl.hidden = true
            processVictory(player2.name)
            
        } else {
            p2HpLbl.text = "\(player2.hp)"
        }
        
    }

    @IBAction func p2AttackPressed(sender: AnyObject) {
        
        player1.attacked(player1.attackPwr)
        
        if !player1.isAlive {
            
            p1HpLbl.text = "DEAD!"
            p2HpLbl.hidden = true
            processVictory(player2.name)
            
        } else {
            p1HpLbl.text = "\(player1.hp)"
        }
    }
    
    func processVictory(player: String) {
        
        printMsgLbl.text = "\(player) is Victorious!"
        playSound()
        
    }
    
    func playSound() {
        
        if victorySound.playing {
            victorySound.stop()
        }
        
        victorySound.play()
    }
}

