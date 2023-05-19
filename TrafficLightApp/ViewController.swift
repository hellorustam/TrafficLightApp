//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by Rustam Samiev on 17.05.2023.
//

import UIKit

class ViewController: UIViewController {
    enum AlphaTrafficLigt {
        case red
        case yellow
        case green
    }
    
    private var statusTrafficLight = AlphaTrafficLigt.red
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var placeTrafficLight: UIView!
    @IBOutlet weak var redTrafficLight: UIView!
    @IBOutlet weak var yellowTrafficLight: UIView!
    @IBOutlet weak var greenTrafficLight: UIView!
    
    //MARK: - Logic for Traffic Light
    private func setStatusTrafficLight() {
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
    
    //MARK: -
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redTrafficLight.alpha = 0.3
        yellowTrafficLight.alpha = 0.3
        greenTrafficLight.alpha = 0.3
    }

    override func viewWillLayoutSubviews() {
        startButton.layer.cornerRadius = startButton.frame.height / 2
        
        placeTrafficLight.layer.cornerRadius = placeTrafficLight.frame.width / 2
        
        redTrafficLight.layer.cornerRadius = redTrafficLight.frame.width / 2
        yellowTrafficLight.layer.cornerRadius = yellowTrafficLight.frame.width / 2
        greenTrafficLight.layer.cornerRadius = greenTrafficLight.frame.width / 2
    }
    
    @IBAction func startButtonDidTapped() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        setStatusTrafficLight()
    }
}

