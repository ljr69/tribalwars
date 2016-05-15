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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func p1AttackPressed(sender: AnyObject) {
    }

    @IBAction func p2AttackPressed(sender: AnyObject) {
    }
    
}

