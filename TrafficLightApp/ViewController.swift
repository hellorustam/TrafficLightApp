//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by Rustam Samiev on 17.05.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var placeTrafficLight: UIView!
    @IBOutlet weak var redTrafficLight: UIView!
    @IBOutlet weak var yellowTrafficLight: UIView!
    @IBOutlet weak var greenTrafficLight: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 22
        
        placeTrafficLight.layer.cornerRadius = 72
        redTrafficLight.layer.cornerRadius = 48
        yellowTrafficLight.layer.cornerRadius = 48
        greenTrafficLight.layer.cornerRadius = 48
        
        redTrafficLight.alpha = 0.3
        yellowTrafficLight.alpha = 0.3
        greenTrafficLight.alpha = 0.3
    }

    @IBAction func startButtonAction(_ sender: UIButton) {
        startButton.titleLabel?.text = "NEXT"
    }
    
}

