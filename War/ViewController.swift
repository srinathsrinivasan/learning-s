//
//  ViewController.swift
//  War
//
//  Created by Srinath Srinivasan on 11/29/15.
//  Copyright © 2015 Srinath Srinivasan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Cardoneimageview: UIImageView!
      @IBOutlet weak var cartwoimageview: UIImageView!
    
    @IBOutlet weak var pRoundButton: UIButton!
  
    
  
    @IBOutlet weak var CasinoWarBackgroundImageview: UIImageView!
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        self.pRoundButton.setTitle("play", forState: UIControlState.Normal)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // use this to get a number and a string. use this to get the card and suit 
    func randomize()->(R_card: UInt32,R_suittouse: String){
        
        var card = arc4random_uniform(13)
        let suit = arc4random_uniform(4)
        var suittouse = ""
        
        card += 1
        
        
        switch suit {
        case 0 : suittouse = "hearts"
        case 1 : suittouse = "diamonds"
        case 2 : suittouse = "clubs"
        default : suittouse = "spades"
        }
        
        return (card,suittouse)
        
    }
    
    
    
    @IBAction func playroundtapped(sender: UIButton) {
        
    // use the function to get the random numbers
        let chooser1 = randomize()
        
        let card1:String = String(format: "%i_of_%@", chooser1.R_card,chooser1.R_suittouse)
        
    // set the card image to string
        self.Cardoneimageview.image = UIImage(named: card1)
        
        
        
        let chooser2 = randomize()
        
        let card2:String = String(format: "%i_of_%@", chooser2.R_card,chooser2.R_suittouse)
        
        self.cartwoimageview.image = UIImage(named:card2)
    
    }
}

