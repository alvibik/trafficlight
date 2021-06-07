//
//  ViewController.swift
//  traffic light
//
//  Created by Александр Биктеев on 05.06.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    let lightOff: CGFloat = 0.3
    let lightOn: CGFloat = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
        
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.height / 2
        greenLight.layer.cornerRadius = greenLight.frame.height / 2
        
        redLight.backgroundColor = .red
        yellowLight.backgroundColor = .yellow
        greenLight.backgroundColor = .green
        
        redLight.alpha = 0.3
        yellowLight.alpha = lightOff
        greenLight.alpha = lightOff
    }
    
    @IBAction func startButtonPress() {
        if redLight.alpha == yellowLight.alpha {
            greenLight.alpha = lightOff
            redLight.alpha = lightOn
            startButton.setTitle("NEXT", for: .normal)
        } else if redLight.alpha == lightOn {
            redLight.alpha = lightOff
            yellowLight.alpha = lightOn
        } else if yellowLight.alpha == lightOn {
            yellowLight.alpha = lightOff
            greenLight.alpha = lightOn
        } else {
            greenLight.alpha = lightOff
            
        }
    }
}
