//
//  ViewController.swift
//  finalcard1
//
//  Created by Akshay Devkate on 26/09/19.
//  Copyright © 2019 Akshay Devkate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var leftcard: UIImageView!
    
    @IBOutlet weak var rightcard: UIImageView!
    
    @IBOutlet weak var leftscorelabel: UILabel!
    
    @IBOutlet weak var rightscorelabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func dealbutton(_ sender: Any) {
        
        var leftscore=0
        var rightscore=0
        //randomize some number
        let leftNumber = Int.random(in: 2...14 )
        //print(leftNumber)
        let rightNumber = Int.random(in: 2...14 )
        //print(rightNumber)
        
        //Update Image using Random number
        leftcard.image = UIImage(named: "card\(leftNumber)")
        rightcard.image = UIImage(named: "card\(rightNumber)")
        
        
        //left side wins
        if leftNumber > rightNumber
        {
            leftscore += 1
            leftscorelabel.text = String(leftscore)
        }
            
        //right side wins
        else if leftscore < rightscore
        {
            rightscore += 1
            rightscorelabel.text = String(rightscore)
        }
            
            //tie
        else
        {
            
            
        }
        
    }
    

}

