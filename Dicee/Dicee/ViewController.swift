//
//  ViewController.swift
//  Dicee
//
//  Created by iamspeed on 6/17/19.
//  Copyright © 2019 Sai Manideep J. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    var randomDiceIndex1 : Int = 0
    
    var randomDiceIndex2 : Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        // This will get executed when roll button is pressed
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        //print(randomDiceIndex1)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }
    

}

