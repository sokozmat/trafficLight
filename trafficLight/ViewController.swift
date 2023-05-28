//
//  ViewController.swift
//  trafficLight
//
//  Created by Smereka on 27.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var trafficLightButton: UIButton!
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trafficLightButton.layer.cornerRadius = 10
        redLight.alpha = 0.3
        redLight.layer.cornerRadius = 55
        yellowLight.alpha = 0.3
        yellowLight.layer.cornerRadius = 55
        greenLight.alpha = 0.3
        greenLight.layer.cornerRadius = 55
    }
    
    @IBAction func buttonPushed() {
        trafficLightButton.setTitle("NEXT", for: .normal)
        if redLight.alpha != 1 && yellowLight.alpha != 1 {
            redLight.alpha = 1
            greenLight.alpha = 0.3
        } else if redLight.alpha == 1 {
            yellowLight.alpha = 1
            redLight.alpha = 0.3
        } else {
            greenLight.alpha = 1
            yellowLight.alpha = 0.3
            redLight.alpha = 0.3
        }
    }
}
