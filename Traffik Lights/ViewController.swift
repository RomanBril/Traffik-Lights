//
//  ViewController.swift
//  Traffik Lights
//
//  Created by Bril Roman on 20.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLight: UIImageView!
    
    @IBOutlet var yellowLight: UIImageView!
    
    @IBOutlet var greenLight: UIImageView!
    
    @IBOutlet var switchColor: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = 50
        yellowLight.layer.cornerRadius = 50
        greenLight.layer.cornerRadius = 50
    }

    @IBAction func switchCollorButton() {
    }
    
}

