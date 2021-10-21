//
//  ViewController.swift
//  Traffik Lights
//
//  Created by Bril Roman on 20.10.2021.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet var redLight: UIImageView!
    @IBOutlet var yellowLight: UIImageView!
    @IBOutlet var greenLight: UIImageView!
    
    @IBOutlet var switchColor: UIButton!
    
    private var currentLight = CurrentLight.red
    
    private let brightness: CGFloat = 1
    private let dark: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.alpha = dark
        yellowLight.alpha = dark
        greenLight.alpha = dark
    }
    
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = yellowLight.frame.width / 2
        
    }

    @IBAction func switchCollorButton(_ sender: Any) {
        if switchColor.currentTitle == "START" {
            switchColor.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            redLight.alpha = brightness
            yellowLight.alpha = dark
            greenLight.alpha = dark
            currentLight = .yellow
        case .yellow:
            redLight.alpha = dark
            greenLight.alpha = dark
            yellowLight.alpha = brightness
            currentLight = .green
        case .green:
            redLight.alpha = dark
            yellowLight.alpha = dark
            greenLight.alpha = brightness
            currentLight = .red
        }
    }
}

