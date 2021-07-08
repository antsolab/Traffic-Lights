//
//  ViewController.swift
//  Trafic Lights
//
//  Created by Andrey on 08.07.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
    }

    var counter = 0
    
    @IBAction func startButtonPressed() {
        counter += 1
        startButton.setTitle("NEXT", for: .normal)
        
        if counter == 1 {
            redView.alpha = 1
            greenView.alpha = 0.3
        } else if counter == 2 {
            yellowView.alpha = 1
            redView.alpha = 0.3
        } else if counter == 3 {
            greenView.alpha = 1
            yellowView.alpha = 0.3
            counter = 0
        }
    }
    
}

