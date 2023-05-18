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
    
    // ---
    
    enum AlphaTrafficLigt {
        case red
        case yellow
        case green
    }
    
    var statusTrafficLight = AlphaTrafficLigt.red
    
    func setStatusTrafficLight() {
        switch statusTrafficLight {
            case .red:
                redTrafficLight.alpha = 1
                yellowTrafficLight.alpha = 0.3
                greenTrafficLight.alpha = 0.3
                statusTrafficLight = AlphaTrafficLigt.yellow
            case .yellow:
                redTrafficLight.alpha = 0.3
                yellowTrafficLight.alpha = 1
                greenTrafficLight.alpha = 0.3
                statusTrafficLight = AlphaTrafficLigt.green
            case .green:
                redTrafficLight.alpha = 0.3
                yellowTrafficLight.alpha = 0.3
                greenTrafficLight.alpha = 1
                statusTrafficLight = AlphaTrafficLigt.red
        }
    }
    
    // ---
    
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

    @IBAction func startButtonDidTapped() {
        startButton.setTitle("NEXT", for: .normal)
        
        setStatusTrafficLight()
    }
    
}

