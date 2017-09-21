//
//  ViewController.swift
//  Homework1
//
//  Created by Michael Bolot on 9/21/17.
//  Copyright © 2017 Michael Bolot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numberView: UIView!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var decrementButton: UIButton!
    @IBOutlet weak var incrimentButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func incrimentButtonTapped(_ sender: Any) {
        //tempA is used to incriment the value in countLabel
        guard let text = countLabel.text else {return}
        guard let value = Int(text) else {return}
        var tempA = value
        tempA += 1
        colorCheck(colorVal: tempA)
        countLabel.text = "\(tempA)"
    }
    
    @IBAction func decrementButtonTapped(_ sender: Any) {
        //tempA used to decrement the value in countLabel
        guard let text = countLabel.text else {return}
        guard let value = Int(text) else {return}
//        var tempA: Int = Int(countLabel.text!)!
        var tempA = value
        tempA -= 1
        colorCheck(colorVal: tempA)
        countLabel.text = "\(tempA)"
    }
    
    //handler function for a switch case to determine
    //background color
    //Used so this doesn't have to be repeated in both button functions
    func colorCheck(colorVal: Int){
        
        
        switch colorVal{
        case let x where x < -30:
            view.backgroundColor = UIColor.darkGray
            
        case let x where x < -20:
            view.backgroundColor = UIColor.orange
            
        case let x where x < -10:
            view.backgroundColor = UIColor.red
            
        case let x where x > 30:
            view.backgroundColor = UIColor.magenta
            
        case let x where x > 20:
            view.backgroundColor = UIColor.green
            
        case let x where x > 10:
            view.backgroundColor = UIColor.yellow
            
        default:
            let white = UIColor.white
            view.backgroundColor = white
 
            
        }
        
        
    }
    

}

